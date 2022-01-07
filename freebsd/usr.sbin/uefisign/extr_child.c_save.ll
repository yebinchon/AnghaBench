; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_child.c_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_child.c_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s: fwrite\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.executable*, i32*, i8*)* @save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save(%struct.executable* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.executable*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.executable* %0, %struct.executable** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.executable*, %struct.executable** %4, align 8
  %17 = getelementptr inbounds %struct.executable, %struct.executable* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.executable*, %struct.executable** %4, align 8
  %20 = getelementptr inbounds %struct.executable, %struct.executable* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @fwrite(i32 %18, i32 %21, i32 1, i32* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
