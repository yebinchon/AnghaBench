; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_config.c_add_jail.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_config.c_add_jail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i32*, i32*, i32 }

@DEP_FROM = common dso_local global i64 0, align 8
@DEP_TO = common dso_local global i64 0, align 8
@cfjails = common dso_local global i32 0, align 4
@tq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfjail* @add_jail() #0 {
  %1 = alloca %struct.cfjail*, align 8
  %2 = call %struct.cfjail* @emalloc(i32 24)
  store %struct.cfjail* %2, %struct.cfjail** %1, align 8
  %3 = load %struct.cfjail*, %struct.cfjail** %1, align 8
  %4 = call i32 @memset(%struct.cfjail* %3, i32 0, i32 24)
  %5 = load %struct.cfjail*, %struct.cfjail** %1, align 8
  %6 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %5, i32 0, i32 2
  %7 = call i32 @TAILQ_INIT(i32* %6)
  %8 = load %struct.cfjail*, %struct.cfjail** %1, align 8
  %9 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @DEP_FROM, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i32 @STAILQ_INIT(i32* %12)
  %14 = load %struct.cfjail*, %struct.cfjail** %1, align 8
  %15 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @DEP_TO, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call i32 @STAILQ_INIT(i32* %18)
  %20 = load %struct.cfjail*, %struct.cfjail** %1, align 8
  %21 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %20, i32 0, i32 0
  store i32* @cfjails, i32** %21, align 8
  %22 = load %struct.cfjail*, %struct.cfjail** %1, align 8
  %23 = load i32, i32* @tq, align 4
  %24 = call i32 @TAILQ_INSERT_TAIL(i32* @cfjails, %struct.cfjail* %22, i32 %23)
  %25 = load %struct.cfjail*, %struct.cfjail** %1, align 8
  ret %struct.cfjail* %25
}

declare dso_local %struct.cfjail* @emalloc(i32) #1

declare dso_local i32 @memset(%struct.cfjail*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cfjail*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
