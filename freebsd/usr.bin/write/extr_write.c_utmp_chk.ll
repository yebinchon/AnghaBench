; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/write/extr_write.c_utmp_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/write/extr_write.c_utmp_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i64, i32, i32 }

@USER_PROCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utmp_chk(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.utmpx, align 8
  %7 = alloca %struct.utmpx*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strncpy(i32 %9, i8* %10, i32 4)
  br label %12

12:                                               ; preds = %30, %2
  %13 = call %struct.utmpx* @getutxline(%struct.utmpx* %6)
  store %struct.utmpx* %13, %struct.utmpx** %7, align 8
  %14 = icmp ne %struct.utmpx* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %17 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @USER_PROCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %24 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strcmp(i8* %22, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (...) @endutxent()
  store i32 0, i32* %3, align 4
  br label %33

30:                                               ; preds = %21, %15
  br label %12

31:                                               ; preds = %12
  %32 = call i32 (...) @endutxent()
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local %struct.utmpx* @getutxline(%struct.utmpx*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @endutxent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
