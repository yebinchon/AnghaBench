; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_unicast_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_unicast_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32 }
%struct.ipoib_header = type { i64 }
%struct.ipoib_path = type { %struct.TYPE_3__, i64, i64, i32 }
%struct.TYPE_3__ = type { i64 }

@IPOIB_MAX_PATH_REC_QUEUE = common dso_local global i64 0, align 8
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.ipoib_dev_priv*, %struct.ipoib_header*)* @ipoib_unicast_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_unicast_send(%struct.mbuf* %0, %struct.ipoib_dev_priv* %1, %struct.ipoib_header* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ipoib_header*, align 8
  %7 = alloca %struct.ipoib_path*, align 8
  %8 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store %struct.ipoib_dev_priv* %1, %struct.ipoib_dev_priv** %5, align 8
  store %struct.ipoib_header* %2, %struct.ipoib_header** %6, align 8
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %10 = load %struct.ipoib_header*, %struct.ipoib_header** %6, align 8
  %11 = getelementptr inbounds %struct.ipoib_header, %struct.ipoib_header* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 4
  %14 = call %struct.ipoib_path* @__path_find(%struct.ipoib_dev_priv* %9, i64 %13)
  store %struct.ipoib_path* %14, %struct.ipoib_path** %7, align 8
  %15 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %16 = icmp ne %struct.ipoib_path* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %19 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %89, label %22

22:                                               ; preds = %17, %3
  store i32 0, i32* %8, align 4
  %23 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %24 = icmp ne %struct.ipoib_path* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %27 = load %struct.ipoib_header*, %struct.ipoib_header** %6, align 8
  %28 = getelementptr inbounds %struct.ipoib_header, %struct.ipoib_header* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.ipoib_path* @path_rec_create(%struct.ipoib_dev_priv* %26, i64 %29)
  store %struct.ipoib_path* %30, %struct.ipoib_path** %7, align 8
  store i32 1, i32* %8, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %33 = icmp ne %struct.ipoib_path* %32, null
  br i1 %33, label %34, label %80

34:                                               ; preds = %31
  %35 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %36 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %35, i32 0, i32 0
  %37 = call i64 @_IF_QLEN(%struct.TYPE_3__* %36)
  %38 = load i64, i64* @IPOIB_MAX_PATH_REC_QUEUE, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %42 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %41, i32 0, i32 0
  %43 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %44 = call i32 @_IF_ENQUEUE(%struct.TYPE_3__* %42, %struct.mbuf* %43)
  br label %53

45:                                               ; preds = %34
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %50 = call i32 @if_inc_counter(i32 %48, i32 %49, i32 1)
  %51 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %52 = call i32 @m_freem(%struct.mbuf* %51)
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %55 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %53
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %60 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %61 = call i64 @path_rec_start(%struct.ipoib_dev_priv* %59, %struct.ipoib_path* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %65 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %64, i32 0, i32 1
  %66 = load i32, i32* @flags, align 4
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %72 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %73 = call i32 @ipoib_path_free(%struct.ipoib_dev_priv* %71, %struct.ipoib_path* %72)
  br label %74

74:                                               ; preds = %70, %63
  br label %151

75:                                               ; preds = %58, %53
  %76 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %77 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %78 = call i32 @__path_add(%struct.ipoib_dev_priv* %76, %struct.ipoib_path* %77)
  br label %79

79:                                               ; preds = %75
  br label %88

80:                                               ; preds = %31
  %81 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %82 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %85 = call i32 @if_inc_counter(i32 %83, i32 %84, i32 1)
  %86 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %87 = call i32 @m_freem(%struct.mbuf* %86)
  br label %88

88:                                               ; preds = %80, %79
  br label %151

89:                                               ; preds = %17
  %90 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %91 = call i64 @ipoib_cm_get(%struct.ipoib_path* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %95 = call i64 @ipoib_cm_up(%struct.ipoib_path* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %100 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %101 = call i64 @ipoib_cm_get(%struct.ipoib_path* %100)
  %102 = call i32 @ipoib_cm_send(%struct.ipoib_dev_priv* %98, %struct.mbuf* %99, i64 %101)
  br label %151

103:                                              ; preds = %93, %89
  %104 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %105 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %110 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %111 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %112 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ipoib_header*, %struct.ipoib_header** %6, align 8
  %115 = getelementptr inbounds %struct.ipoib_header, %struct.ipoib_header* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @IPOIB_QPN(i64 %116)
  %118 = call i32 @ipoib_send(%struct.ipoib_dev_priv* %109, %struct.mbuf* %110, i64 %113, i32 %117)
  br label %150

119:                                              ; preds = %103
  %120 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %121 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %126 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %127 = call i64 @path_rec_start(%struct.ipoib_dev_priv* %125, %struct.ipoib_path* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %131 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @IPOIB_MAX_PATH_REC_QUEUE, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %138 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %137, i32 0, i32 0
  %139 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %140 = call i32 @_IF_ENQUEUE(%struct.TYPE_3__* %138, %struct.mbuf* %139)
  br label %149

141:                                              ; preds = %129, %124
  %142 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %143 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %146 = call i32 @if_inc_counter(i32 %144, i32 %145, i32 1)
  %147 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %148 = call i32 @m_freem(%struct.mbuf* %147)
  br label %149

149:                                              ; preds = %141, %136
  br label %150

150:                                              ; preds = %149, %108
  br label %151

151:                                              ; preds = %74, %88, %150, %97
  ret void
}

declare dso_local %struct.ipoib_path* @__path_find(%struct.ipoib_dev_priv*, i64) #1

declare dso_local %struct.ipoib_path* @path_rec_create(%struct.ipoib_dev_priv*, i64) #1

declare dso_local i64 @_IF_QLEN(%struct.TYPE_3__*) #1

declare dso_local i32 @_IF_ENQUEUE(%struct.TYPE_3__*, %struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @path_rec_start(%struct.ipoib_dev_priv*, %struct.ipoib_path*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @ipoib_path_free(%struct.ipoib_dev_priv*, %struct.ipoib_path*) #1

declare dso_local i32 @__path_add(%struct.ipoib_dev_priv*, %struct.ipoib_path*) #1

declare dso_local i64 @ipoib_cm_get(%struct.ipoib_path*) #1

declare dso_local i64 @ipoib_cm_up(%struct.ipoib_path*) #1

declare dso_local i32 @ipoib_cm_send(%struct.ipoib_dev_priv*, %struct.mbuf*, i64) #1

declare dso_local i32 @ipoib_send(%struct.ipoib_dev_priv*, %struct.mbuf*, i64, i32) #1

declare dso_local i32 @IPOIB_QPN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
