; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_pfil.c_pfil_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_pfil.c_pfil_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfil_link_args = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pfil_link = type { i32 }

@PFIL_IN = common dso_local global i32 0, align 4
@PFIL_OUT = common dso_local global i32 0, align 4
@PFIL_EPOCH = common dso_local global i32 0, align 4
@pfil_link_free = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfil_link_args*, %struct.TYPE_7__*, %struct.TYPE_6__*)* @pfil_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfil_unlink(%struct.pfil_link_args* %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfil_link_args*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.pfil_link*, align 8
  %9 = alloca %struct.pfil_link*, align 8
  store %struct.pfil_link_args* %0, %struct.pfil_link_args** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %10 = call i32 (...) @PFIL_LOCK_ASSERT()
  %11 = load %struct.pfil_link_args*, %struct.pfil_link_args** %5, align 8
  %12 = getelementptr inbounds %struct.pfil_link_args, %struct.pfil_link_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PFIL_IN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = call %struct.pfil_link* @pfil_link_remove(i32* %19, %struct.TYPE_6__* %20)
  store %struct.pfil_link* %21, %struct.pfil_link** %8, align 8
  %22 = load %struct.pfil_link*, %struct.pfil_link** %8, align 8
  %23 = icmp ne %struct.pfil_link* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %24, %17
  br label %35

34:                                               ; preds = %3
  store %struct.pfil_link* null, %struct.pfil_link** %8, align 8
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.pfil_link_args*, %struct.pfil_link_args** %5, align 8
  %37 = getelementptr inbounds %struct.pfil_link_args, %struct.pfil_link_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PFIL_OUT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = call %struct.pfil_link* @pfil_link_remove(i32* %44, %struct.TYPE_6__* %45)
  store %struct.pfil_link* %46, %struct.pfil_link** %9, align 8
  %47 = load %struct.pfil_link*, %struct.pfil_link** %9, align 8
  %48 = icmp ne %struct.pfil_link* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %49, %42
  br label %60

59:                                               ; preds = %35
  store %struct.pfil_link* null, %struct.pfil_link** %9, align 8
  br label %60

60:                                               ; preds = %59, %58
  %61 = call i32 (...) @PFIL_UNLOCK()
  %62 = load %struct.pfil_link*, %struct.pfil_link** %8, align 8
  %63 = icmp ne %struct.pfil_link* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @PFIL_EPOCH, align 4
  %66 = load %struct.pfil_link*, %struct.pfil_link** %8, align 8
  %67 = getelementptr inbounds %struct.pfil_link, %struct.pfil_link* %66, i32 0, i32 0
  %68 = load i32, i32* @pfil_link_free, align 4
  %69 = call i32 @epoch_call(i32 %65, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %60
  %71 = load %struct.pfil_link*, %struct.pfil_link** %9, align 8
  %72 = icmp ne %struct.pfil_link* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @PFIL_EPOCH, align 4
  %75 = load %struct.pfil_link*, %struct.pfil_link** %9, align 8
  %76 = getelementptr inbounds %struct.pfil_link, %struct.pfil_link* %75, i32 0, i32 0
  %77 = load i32, i32* @pfil_link_free, align 4
  %78 = call i32 @epoch_call(i32 %74, i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %70
  %80 = load %struct.pfil_link*, %struct.pfil_link** %8, align 8
  %81 = icmp eq %struct.pfil_link* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.pfil_link*, %struct.pfil_link** %9, align 8
  %84 = icmp eq %struct.pfil_link* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @ENOENT, align 4
  store i32 %86, i32* %4, align 4
  br label %88

87:                                               ; preds = %82, %79
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %85
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @PFIL_LOCK_ASSERT(...) #1

declare dso_local %struct.pfil_link* @pfil_link_remove(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @PFIL_UNLOCK(...) #1

declare dso_local i32 @epoch_call(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
