; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_config.c_free_param_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_config.c_free_param_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfparam = type { i32 }
%struct.cfstring = type { i32, %struct.cfstring*, %struct.cfstring* }
%struct.cfvar = type { i32, %struct.cfvar*, %struct.cfvar* }

@tq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfparam*)* @free_param_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_param_strings(%struct.cfparam* %0) #0 {
  %2 = alloca %struct.cfparam*, align 8
  %3 = alloca %struct.cfstring*, align 8
  %4 = alloca %struct.cfvar*, align 8
  store %struct.cfparam* %0, %struct.cfparam** %2, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load %struct.cfparam*, %struct.cfparam** %2, align 8
  %7 = getelementptr inbounds %struct.cfparam, %struct.cfparam* %6, i32 0, i32 0
  %8 = call %struct.cfvar* @TAILQ_FIRST(i32* %7)
  %9 = bitcast %struct.cfvar* %8 to %struct.cfstring*
  store %struct.cfstring* %9, %struct.cfstring** %3, align 8
  %10 = icmp ne %struct.cfstring* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %5
  %12 = load %struct.cfstring*, %struct.cfstring** %3, align 8
  %13 = getelementptr inbounds %struct.cfstring, %struct.cfstring* %12, i32 0, i32 2
  %14 = load %struct.cfstring*, %struct.cfstring** %13, align 8
  %15 = bitcast %struct.cfstring* %14 to %struct.cfvar*
  %16 = call i32 @free(%struct.cfvar* %15)
  br label %17

17:                                               ; preds = %22, %11
  %18 = load %struct.cfstring*, %struct.cfstring** %3, align 8
  %19 = getelementptr inbounds %struct.cfstring, %struct.cfstring* %18, i32 0, i32 0
  %20 = call %struct.cfvar* @STAILQ_FIRST(i32* %19)
  store %struct.cfvar* %20, %struct.cfvar** %4, align 8
  %21 = icmp ne %struct.cfvar* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.cfvar*, %struct.cfvar** %4, align 8
  %24 = getelementptr inbounds %struct.cfvar, %struct.cfvar* %23, i32 0, i32 1
  %25 = load %struct.cfvar*, %struct.cfvar** %24, align 8
  %26 = call i32 @free(%struct.cfvar* %25)
  %27 = load %struct.cfstring*, %struct.cfstring** %3, align 8
  %28 = getelementptr inbounds %struct.cfstring, %struct.cfstring* %27, i32 0, i32 0
  %29 = load i32, i32* @tq, align 4
  %30 = call i32 @STAILQ_REMOVE_HEAD(i32* %28, i32 %29)
  %31 = load %struct.cfvar*, %struct.cfvar** %4, align 8
  %32 = call i32 @free(%struct.cfvar* %31)
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.cfparam*, %struct.cfparam** %2, align 8
  %35 = getelementptr inbounds %struct.cfparam, %struct.cfparam* %34, i32 0, i32 0
  %36 = load %struct.cfstring*, %struct.cfstring** %3, align 8
  %37 = bitcast %struct.cfstring* %36 to %struct.cfvar*
  %38 = load i32, i32* @tq, align 4
  %39 = call i32 @TAILQ_REMOVE(i32* %35, %struct.cfvar* %37, i32 %38)
  %40 = load %struct.cfstring*, %struct.cfstring** %3, align 8
  %41 = bitcast %struct.cfstring* %40 to %struct.cfvar*
  %42 = call i32 @free(%struct.cfvar* %41)
  br label %5

43:                                               ; preds = %5
  ret void
}

declare dso_local %struct.cfvar* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @free(%struct.cfvar*) #1

declare dso_local %struct.cfvar* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cfvar*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
