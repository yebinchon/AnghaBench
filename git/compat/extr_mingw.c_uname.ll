; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_uname.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_uname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Windows\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uname(%struct.utsname* %0) #0 {
  %2 = alloca %struct.utsname*, align 8
  %3 = alloca i32, align 4
  store %struct.utsname* %0, %struct.utsname** %2, align 8
  %4 = call i32 (...) @GetVersion()
  store i32 %4, i32* %3, align 4
  %5 = load %struct.utsname*, %struct.utsname** %2, align 8
  %6 = call i32 @memset(%struct.utsname* %5, i32 0, i32 12)
  %7 = load %struct.utsname*, %struct.utsname** %2, align 8
  %8 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i32, i32, i8*, ...) @xsnprintf(i32 %9, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.utsname*, %struct.utsname** %2, align 8
  %12 = getelementptr inbounds %struct.utsname, %struct.utsname* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 255
  %16 = load i32, i32* %3, align 4
  %17 = lshr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = call i32 (i32, i32, i8*, ...) @xsnprintf(i32 %13, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.utsname*, %struct.utsname** %2, align 8
  %21 = getelementptr inbounds %struct.utsname, %struct.utsname* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 32767
  %26 = call i32 (i32, i32, i8*, ...) @xsnprintf(i32 %22, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  ret i32 0
}

declare dso_local i32 @GetVersion(...) #1

declare dso_local i32 @memset(%struct.utsname*, i32, i32) #1

declare dso_local i32 @xsnprintf(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
