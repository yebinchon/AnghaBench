; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_rmnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_rmnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udbp_softc = type { i8*, i32, i32* }

@ng_udbp_typestruct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: Could not create Netgraph node\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Could not name Netgraph node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ng_udbp_rmnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_udbp_rmnode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.udbp_softc*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.udbp_softc* @NG_NODE_PRIVATE(i32* %4)
  store %struct.udbp_softc* %5, %struct.udbp_softc** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @NG_NODE_SET_PRIVATE(i32* %6, %struct.udbp_softc* null)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @NG_NODE_UNREF(i32* %8)
  %10 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %11 = icmp eq %struct.udbp_softc* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %15 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %14, i32 0, i32 2
  %16 = call i64 @ng_make_node_common(i32* @ng_udbp_typestruct, i32** %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %20 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %24 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  br label %51

25:                                               ; preds = %13
  %26 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %27 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %30 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @ng_name_node(i32* %28, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %36 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %40 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @NG_NODE_UNREF(i32* %41)
  %43 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %44 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  br label %51

45:                                               ; preds = %25
  %46 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %47 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %50 = call i32 @NG_NODE_SET_PRIVATE(i32* %48, %struct.udbp_softc* %49)
  br label %51

51:                                               ; preds = %45, %34, %18, %12
  %52 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %53 = icmp ne %struct.udbp_softc* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %56 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %55, i32 0, i32 1
  %57 = call i32 @mtx_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %51
  ret i32 0
}

declare dso_local %struct.udbp_softc* @NG_NODE_PRIVATE(i32*) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32*, %struct.udbp_softc*) #1

declare dso_local i32 @NG_NODE_UNREF(i32*) #1

declare dso_local i64 @ng_make_node_common(i32*, i32**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @ng_name_node(i32*, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
