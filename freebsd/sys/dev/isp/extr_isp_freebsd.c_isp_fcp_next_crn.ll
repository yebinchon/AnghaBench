; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_fcp_next_crn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_fcp_next_crn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.isp_fc* }
%struct.isp_fc = type { %struct.isp_nexus**, %struct.isp_nexus* }
%struct.isp_nexus = type { i64, i64, i32, %struct.isp_nexus* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isp_fcp_next_crn(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.isp_fc*, align 8
  %12 = alloca %struct.isp_nexus*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = call i64 @IS_2100(%struct.TYPE_8__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %124

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @XS_CHANNEL(i32* %19)
  store i64 %20, i64* %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @XS_TGT(i32* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @XS_LUN(i32* %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.isp_fc*, %struct.isp_fc** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %29, i64 %30
  store %struct.isp_fc* %31, %struct.isp_fc** %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @NEXUS_HASH(i64 %32, i64 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.isp_fc*, %struct.isp_fc** %11, align 8
  %36 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %35, i32 0, i32 0
  %37 = load %struct.isp_nexus**, %struct.isp_nexus*** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.isp_nexus*, %struct.isp_nexus** %37, i64 %39
  %41 = load %struct.isp_nexus*, %struct.isp_nexus** %40, align 8
  store %struct.isp_nexus* %41, %struct.isp_nexus** %12, align 8
  br label %42

42:                                               ; preds = %58, %18
  %43 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %44 = icmp ne %struct.isp_nexus* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %47 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %53 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %62

58:                                               ; preds = %51, %45
  %59 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %60 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %59, i32 0, i32 3
  %61 = load %struct.isp_nexus*, %struct.isp_nexus** %60, align 8
  store %struct.isp_nexus* %61, %struct.isp_nexus** %12, align 8
  br label %42

62:                                               ; preds = %57, %42
  %63 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %64 = icmp eq %struct.isp_nexus* %63, null
  br i1 %64, label %65, label %110

65:                                               ; preds = %62
  %66 = load %struct.isp_fc*, %struct.isp_fc** %11, align 8
  %67 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %66, i32 0, i32 1
  %68 = load %struct.isp_nexus*, %struct.isp_nexus** %67, align 8
  store %struct.isp_nexus* %68, %struct.isp_nexus** %12, align 8
  %69 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %70 = icmp eq %struct.isp_nexus* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i32, i32* @M_DEVBUF, align 4
  %73 = load i32, i32* @M_ZERO, align 4
  %74 = load i32, i32* @M_NOWAIT, align 4
  %75 = or i32 %73, %74
  %76 = call %struct.isp_nexus* @malloc(i32 32, i32 %72, i32 %75)
  store %struct.isp_nexus* %76, %struct.isp_nexus** %12, align 8
  %77 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %78 = icmp eq %struct.isp_nexus* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %124

80:                                               ; preds = %71
  br label %87

81:                                               ; preds = %65
  %82 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %83 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %82, i32 0, i32 3
  %84 = load %struct.isp_nexus*, %struct.isp_nexus** %83, align 8
  %85 = load %struct.isp_fc*, %struct.isp_fc** %11, align 8
  %86 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %85, i32 0, i32 1
  store %struct.isp_nexus* %84, %struct.isp_nexus** %86, align 8
  br label %87

87:                                               ; preds = %81, %80
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %90 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %93 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.isp_fc*, %struct.isp_fc** %11, align 8
  %95 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %94, i32 0, i32 0
  %96 = load %struct.isp_nexus**, %struct.isp_nexus*** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.isp_nexus*, %struct.isp_nexus** %96, i64 %98
  %100 = load %struct.isp_nexus*, %struct.isp_nexus** %99, align 8
  %101 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %102 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %101, i32 0, i32 3
  store %struct.isp_nexus* %100, %struct.isp_nexus** %102, align 8
  %103 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %104 = load %struct.isp_fc*, %struct.isp_fc** %11, align 8
  %105 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %104, i32 0, i32 0
  %106 = load %struct.isp_nexus**, %struct.isp_nexus*** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.isp_nexus*, %struct.isp_nexus** %106, i64 %108
  store %struct.isp_nexus* %103, %struct.isp_nexus** %109, align 8
  br label %110

110:                                              ; preds = %87, %62
  %111 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %112 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %117 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %116, i32 0, i32 2
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %110
  %119 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %120 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load i32*, i32** %6, align 8
  store i32 %121, i32* %123, align 4
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %118, %79, %17
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @IS_2100(%struct.TYPE_8__*) #1

declare dso_local i64 @XS_CHANNEL(i32*) #1

declare dso_local i64 @XS_TGT(i32*) #1

declare dso_local i64 @XS_LUN(i32*) #1

declare dso_local i32 @NEXUS_HASH(i64, i64) #1

declare dso_local %struct.isp_nexus* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
