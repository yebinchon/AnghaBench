; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_state.c_dep_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_state.c_dep_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i32* }
%struct.cfdepend = type { i32, %struct.cfjail** }

@DEP_FROM = common dso_local global i64 0, align 8
@DEP_TO = common dso_local global i64 0, align 8
@tq = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfjail*, %struct.cfjail*, i32)* @dep_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dep_add(%struct.cfjail* %0, %struct.cfjail* %1, i32 %2) #0 {
  %4 = alloca %struct.cfjail*, align 8
  %5 = alloca %struct.cfjail*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfdepend*, align 8
  store %struct.cfjail* %0, %struct.cfjail** %4, align 8
  store %struct.cfjail* %1, %struct.cfjail** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call %struct.cfdepend* @emalloc(i32 16)
  store %struct.cfdepend* %8, %struct.cfdepend** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.cfdepend*, %struct.cfdepend** %7, align 8
  %11 = getelementptr inbounds %struct.cfdepend, %struct.cfdepend* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %13 = load %struct.cfdepend*, %struct.cfdepend** %7, align 8
  %14 = getelementptr inbounds %struct.cfdepend, %struct.cfdepend* %13, i32 0, i32 1
  %15 = load %struct.cfjail**, %struct.cfjail*** %14, align 8
  %16 = load i64, i64* @DEP_FROM, align 8
  %17 = getelementptr inbounds %struct.cfjail*, %struct.cfjail** %15, i64 %16
  store %struct.cfjail* %12, %struct.cfjail** %17, align 8
  %18 = load %struct.cfjail*, %struct.cfjail** %5, align 8
  %19 = load %struct.cfdepend*, %struct.cfdepend** %7, align 8
  %20 = getelementptr inbounds %struct.cfdepend, %struct.cfdepend* %19, i32 0, i32 1
  %21 = load %struct.cfjail**, %struct.cfjail*** %20, align 8
  %22 = load i64, i64* @DEP_TO, align 8
  %23 = getelementptr inbounds %struct.cfjail*, %struct.cfjail** %21, i64 %22
  store %struct.cfjail* %18, %struct.cfjail** %23, align 8
  %24 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %25 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @DEP_FROM, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load %struct.cfdepend*, %struct.cfdepend** %7, align 8
  %30 = load i32*, i32** @tq, align 8
  %31 = load i64, i64* @DEP_FROM, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @STAILQ_INSERT_TAIL(i32* %28, %struct.cfdepend* %29, i32 %33)
  %35 = load %struct.cfjail*, %struct.cfjail** %5, align 8
  %36 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @DEP_TO, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load %struct.cfdepend*, %struct.cfdepend** %7, align 8
  %41 = load i32*, i32** @tq, align 8
  %42 = load i64, i64* @DEP_TO, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @STAILQ_INSERT_TAIL(i32* %39, %struct.cfdepend* %40, i32 %44)
  ret void
}

declare dso_local %struct.cfdepend* @emalloc(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cfdepend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
