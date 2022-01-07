; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_path_rec = type { i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ipoib_ah* }
%struct.ipoib_ah = type { i32 }
%struct.ipoib_path = type { i32, i32, i32*, i32, %struct.ifqueue, %struct.ipoib_ah*, %struct.ib_sa_path_rec, %struct.ipoib_dev_priv* }
%struct.ifqueue = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i64 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.epoch_tracker = type { i32 }
%struct.ib_ah_attr = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"PathRec LID 0x%04x for GID %16D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"PathRec status %d for GID %16D\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"created address handle %p for LID 0x%04x, SL %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"dev_queue_xmit failed to requeue packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ib_sa_path_rec*, i8*)* @path_rec_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_rec_completion(i32 %0, %struct.ib_sa_path_rec* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_path_rec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ipoib_path*, align 8
  %8 = alloca %struct.ipoib_dev_priv*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.ipoib_ah*, align 8
  %11 = alloca %struct.ipoib_ah*, align 8
  %12 = alloca %struct.epoch_tracker, align 4
  %13 = alloca %struct.ifqueue, align 4
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ib_ah_attr, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ib_sa_path_rec* %1, %struct.ib_sa_path_rec** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.ipoib_path*
  store %struct.ipoib_path* %18, %struct.ipoib_path** %7, align 8
  %19 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %20 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %19, i32 0, i32 7
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %20, align 8
  store %struct.ipoib_dev_priv* %21, %struct.ipoib_dev_priv** %8, align 8
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 4
  %24 = load %struct.ifnet*, %struct.ifnet** %23, align 8
  store %struct.ifnet* %24, %struct.ifnet** %9, align 8
  store %struct.ipoib_ah* null, %struct.ipoib_ah** %10, align 8
  store %struct.ipoib_ah* null, %struct.ipoib_ah** %11, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %3
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %29 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %30 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.ipoib_ah* @be16_to_cpu(i32 %31)
  %33 = ptrtoint %struct.ipoib_ah* %32 to i32
  %34 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %35 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.ipoib_ah*, %struct.ipoib_ah** %36, align 8
  %38 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.ipoib_ah* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %48

39:                                               ; preds = %3
  %40 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %43 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.ipoib_ah*, %struct.ipoib_ah** %45, align 8
  %47 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %41, %struct.ipoib_ah* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %39, %27
  %49 = call i32 @bzero(%struct.ifqueue* %13, i32 4)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %54 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %57 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %60 = call i32 @ib_init_ah_from_path(i32 %55, i32 %58, %struct.ib_sa_path_rec* %59, %struct.ib_ah_attr* %16)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %52
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %65 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.ipoib_ah* @ipoib_create_ah(%struct.ipoib_dev_priv* %63, i32 %66, %struct.ib_ah_attr* %16)
  store %struct.ipoib_ah* %67, %struct.ipoib_ah** %10, align 8
  br label %68

68:                                               ; preds = %62, %52
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %71 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %70, i32 0, i32 0
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.ipoib_ah*, %struct.ipoib_ah** %10, align 8
  %75 = icmp ne %struct.ipoib_ah* %74, null
  br i1 %75, label %76, label %113

76:                                               ; preds = %69
  %77 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %78 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %77, i32 0, i32 6
  %79 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %80 = bitcast %struct.ib_sa_path_rec* %78 to i8*
  %81 = bitcast %struct.ib_sa_path_rec* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 24, i1 false)
  %82 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %83 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %82, i32 0, i32 5
  %84 = load %struct.ipoib_ah*, %struct.ipoib_ah** %83, align 8
  store %struct.ipoib_ah* %84, %struct.ipoib_ah** %11, align 8
  %85 = load %struct.ipoib_ah*, %struct.ipoib_ah** %10, align 8
  %86 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %87 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %86, i32 0, i32 5
  store %struct.ipoib_ah* %85, %struct.ipoib_ah** %87, align 8
  %88 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %89 = load %struct.ipoib_ah*, %struct.ipoib_ah** %10, align 8
  %90 = ptrtoint %struct.ipoib_ah* %89 to i32
  %91 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %92 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.ipoib_ah* @be16_to_cpu(i32 %93)
  %95 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %96 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %88, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %90, %struct.ipoib_ah* %94, i8* %97)
  br label %99

99:                                               ; preds = %107, %76
  %100 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %101 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %100, i32 0, i32 4
  %102 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %103 = call i32 @_IF_DEQUEUE(%struct.ifqueue* %101, %struct.mbuf* %102)
  %104 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %105 = icmp eq %struct.mbuf* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %110

107:                                              ; preds = %99
  %108 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %109 = call i32 @_IF_ENQUEUE(%struct.ifqueue* %13, %struct.mbuf* %108)
  br label %99

110:                                              ; preds = %106
  %111 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %112 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %69
  %114 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %115 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %114, i32 0, i32 2
  store i32* null, i32** %115, align 8
  %116 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %117 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %116, i32 0, i32 1
  %118 = call i32 @complete(i32* %117)
  %119 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %120 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %119, i32 0, i32 0
  %121 = load i64, i64* %15, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load %struct.ipoib_ah*, %struct.ipoib_ah** %11, align 8
  %124 = icmp ne %struct.ipoib_ah* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %113
  %126 = load %struct.ipoib_ah*, %struct.ipoib_ah** %11, align 8
  %127 = call i32 @ipoib_put_ah(%struct.ipoib_ah* %126)
  br label %128

128:                                              ; preds = %125, %113
  %129 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %12, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @NET_EPOCH_ENTER(i32 %130)
  br label %132

132:                                              ; preds = %153, %128
  %133 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %134 = call i32 @_IF_DEQUEUE(%struct.ifqueue* %13, %struct.mbuf* %133)
  %135 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %136 = icmp eq %struct.mbuf* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %154

138:                                              ; preds = %132
  %139 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %140 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %141 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store %struct.ifnet* %139, %struct.ifnet** %142, align 8
  %143 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %144 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %143, i32 0, i32 0
  %145 = load i64 (%struct.ifnet*, %struct.mbuf*)*, i64 (%struct.ifnet*, %struct.mbuf*)** %144, align 8
  %146 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %147 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %148 = call i64 %145(%struct.ifnet* %146, %struct.mbuf* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %138
  %151 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %152 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %151, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %138
  br label %132

154:                                              ; preds = %137
  %155 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %12, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @NET_EPOCH_EXIT(i32 %156)
  ret void
}

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32, %struct.ipoib_ah*, i8*) #1

declare dso_local %struct.ipoib_ah* @be16_to_cpu(i32) #1

declare dso_local i32 @bzero(%struct.ifqueue*, i32) #1

declare dso_local i32 @ib_init_ah_from_path(i32, i32, %struct.ib_sa_path_rec*, %struct.ib_ah_attr*) #1

declare dso_local %struct.ipoib_ah* @ipoib_create_ah(%struct.ipoib_dev_priv*, i32, %struct.ib_ah_attr*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_IF_DEQUEUE(%struct.ifqueue*, %struct.mbuf*) #1

declare dso_local i32 @_IF_ENQUEUE(%struct.ifqueue*, %struct.mbuf*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipoib_put_ah(%struct.ipoib_ah*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
