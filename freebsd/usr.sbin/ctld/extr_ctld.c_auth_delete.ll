; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth = type { %struct.auth*, %struct.auth*, %struct.auth*, %struct.auth*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@a_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth*)* @auth_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_delete(%struct.auth* %0) #0 {
  %2 = alloca %struct.auth*, align 8
  store %struct.auth* %0, %struct.auth** %2, align 8
  %3 = load %struct.auth*, %struct.auth** %2, align 8
  %4 = getelementptr inbounds %struct.auth, %struct.auth* %3, i32 0, i32 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.auth*, %struct.auth** %2, align 8
  %8 = load i32, i32* @a_next, align 4
  %9 = call i32 @TAILQ_REMOVE(i32* %6, %struct.auth* %7, i32 %8)
  %10 = load %struct.auth*, %struct.auth** %2, align 8
  %11 = getelementptr inbounds %struct.auth, %struct.auth* %10, i32 0, i32 3
  %12 = load %struct.auth*, %struct.auth** %11, align 8
  %13 = call i32 @free(%struct.auth* %12)
  %14 = load %struct.auth*, %struct.auth** %2, align 8
  %15 = getelementptr inbounds %struct.auth, %struct.auth* %14, i32 0, i32 2
  %16 = load %struct.auth*, %struct.auth** %15, align 8
  %17 = call i32 @free(%struct.auth* %16)
  %18 = load %struct.auth*, %struct.auth** %2, align 8
  %19 = getelementptr inbounds %struct.auth, %struct.auth* %18, i32 0, i32 1
  %20 = load %struct.auth*, %struct.auth** %19, align 8
  %21 = call i32 @free(%struct.auth* %20)
  %22 = load %struct.auth*, %struct.auth** %2, align 8
  %23 = getelementptr inbounds %struct.auth, %struct.auth* %22, i32 0, i32 0
  %24 = load %struct.auth*, %struct.auth** %23, align 8
  %25 = call i32 @free(%struct.auth* %24)
  %26 = load %struct.auth*, %struct.auth** %2, align 8
  %27 = call i32 @free(%struct.auth* %26)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.auth*, i32) #1

declare dso_local i32 @free(%struct.auth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
