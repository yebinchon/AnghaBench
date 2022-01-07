; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_config.c_int_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_config.c_int_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfparam = type { i32 }
%struct.TYPE_2__ = type { i32 }

@cfstrings = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @int_param(%struct.cfparam* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfparam*, align 8
  %5 = alloca i32*, align 8
  store %struct.cfparam* %0, %struct.cfparam** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.cfparam*, %struct.cfparam** %4, align 8
  %7 = icmp eq %struct.cfparam* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.cfparam*, %struct.cfparam** %4, align 8
  %10 = getelementptr inbounds %struct.cfparam, %struct.cfparam* %9, i32 0, i32 0
  %11 = call i64 @TAILQ_EMPTY(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %23

14:                                               ; preds = %8
  %15 = load %struct.cfparam*, %struct.cfparam** %4, align 8
  %16 = getelementptr inbounds %struct.cfparam, %struct.cfparam* %15, i32 0, i32 0
  %17 = load i32, i32* @cfstrings, align 4
  %18 = call %struct.TYPE_2__* @TAILQ_LAST(i32* %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strtol(i32 %20, i32* null, i32 10)
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @TAILQ_LAST(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
