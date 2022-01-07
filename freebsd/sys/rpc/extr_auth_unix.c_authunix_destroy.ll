; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_auth_unix.c_authunix_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_auth_unix.c_authunix_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.audata = type { %struct.TYPE_8__, %struct.TYPE_10__, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @authunix_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authunix_destroy(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.audata*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call %struct.audata* @AUTH_PRIVATE(%struct.TYPE_11__* %4)
  store %struct.audata* %5, %struct.audata** %3, align 8
  %6 = load %struct.audata*, %struct.audata** %3, align 8
  %7 = getelementptr inbounds %struct.audata, %struct.audata* %6, i32 0, i32 2
  %8 = call i32 @refcount_release(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.audata*, %struct.audata** %3, align 8
  %13 = getelementptr inbounds %struct.audata, %struct.audata* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = load %struct.audata*, %struct.audata** %3, align 8
  %17 = getelementptr inbounds %struct.audata, %struct.audata* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mem_free(%struct.TYPE_11__* %15, i32 %19)
  %21 = load %struct.audata*, %struct.audata** %3, align 8
  %22 = getelementptr inbounds %struct.audata, %struct.audata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %11
  %27 = load %struct.audata*, %struct.audata** %3, align 8
  %28 = getelementptr inbounds %struct.audata, %struct.audata* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load %struct.audata*, %struct.audata** %3, align 8
  %32 = getelementptr inbounds %struct.audata, %struct.audata* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mem_free(%struct.TYPE_11__* %30, i32 %34)
  br label %36

36:                                               ; preds = %26, %11
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = call i32 @mem_free(%struct.TYPE_11__* %39, i32 40)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %36
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mem_free(%struct.TYPE_11__* %50, i32 %54)
  br label %56

56:                                               ; preds = %46, %36
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %58 = call i32 @mem_free(%struct.TYPE_11__* %57, i32 24)
  br label %59

59:                                               ; preds = %56, %10
  ret void
}

declare dso_local %struct.audata* @AUTH_PRIVATE(%struct.TYPE_11__*) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i32 @mem_free(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
