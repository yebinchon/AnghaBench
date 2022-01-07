; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/id/extr_id.c_pline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/id/extr_id.c_pline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i32, i32, i8*, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"getpwuid\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s:%s:%d:%d:%s:%ld:%ld:%s:%s:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*)* @pline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pline(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  %3 = load %struct.passwd*, %struct.passwd** %2, align 8
  %4 = icmp ne %struct.passwd* %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = call i32 (...) @getuid()
  %7 = call %struct.passwd* @getpwuid(i32 %6)
  store %struct.passwd* %7, %struct.passwd** %2, align 8
  %8 = icmp eq %struct.passwd* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %5
  br label %12

12:                                               ; preds = %11, %1
  %13 = load %struct.passwd*, %struct.passwd** %2, align 8
  %14 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.passwd*, %struct.passwd** %2, align 8
  %17 = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.passwd*, %struct.passwd** %2, align 8
  %20 = getelementptr inbounds %struct.passwd, %struct.passwd* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.passwd*, %struct.passwd** %2, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.passwd*, %struct.passwd** %2, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.passwd*, %struct.passwd** %2, align 8
  %29 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.passwd*, %struct.passwd** %2, align 8
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.passwd*, %struct.passwd** %2, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.passwd*, %struct.passwd** %2, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.passwd*, %struct.passwd** %2, align 8
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* %18, i32 %21, i32 %24, i8* %27, i64 %30, i64 %33, i32 %36, i32 %39, i32 %42)
  ret void
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i32, i8*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
