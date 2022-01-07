; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_add_compunit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_add_compunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_compunit = type { i32, i8*, %struct.s_compunit* }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@cu_nextp = common dso_local global %struct.s_compunit** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @add_compunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_compunit(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s_compunit*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call %struct.s_compunit* @malloc(i32 24)
  store %struct.s_compunit* %6, %struct.s_compunit** %5, align 8
  %7 = icmp eq %struct.s_compunit* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.s_compunit*, %struct.s_compunit** %5, align 8
  %13 = getelementptr inbounds %struct.s_compunit, %struct.s_compunit* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.s_compunit*, %struct.s_compunit** %5, align 8
  %16 = getelementptr inbounds %struct.s_compunit, %struct.s_compunit* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.s_compunit*, %struct.s_compunit** %5, align 8
  %18 = getelementptr inbounds %struct.s_compunit, %struct.s_compunit* %17, i32 0, i32 2
  store %struct.s_compunit* null, %struct.s_compunit** %18, align 8
  %19 = load %struct.s_compunit*, %struct.s_compunit** %5, align 8
  %20 = load %struct.s_compunit**, %struct.s_compunit*** @cu_nextp, align 8
  store %struct.s_compunit* %19, %struct.s_compunit** %20, align 8
  %21 = load %struct.s_compunit*, %struct.s_compunit** %5, align 8
  %22 = getelementptr inbounds %struct.s_compunit, %struct.s_compunit* %21, i32 0, i32 2
  store %struct.s_compunit** %22, %struct.s_compunit*** @cu_nextp, align 8
  ret void
}

declare dso_local %struct.s_compunit* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
