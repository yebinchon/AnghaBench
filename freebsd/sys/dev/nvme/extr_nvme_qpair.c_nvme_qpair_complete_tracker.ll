; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_complete_tracker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_complete_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32**, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_tracker = type { %struct.nvme_request*, i32, i32 }
%struct.nvme_request = type { i64, i64, i32, i32 (i32, %struct.nvme_completion*)*, %struct.TYPE_4__ }
%struct.nvme_completion = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.nvme_completion.0 = type { i64 }

@nvme_retry_count = common dso_local global i64 0, align 8
@ERROR_PRINT_ALL = common dso_local global i64 0, align 8
@ERROR_PRINT_NO_RETRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"cpl cid does not match cmd cid\0A\00", align 1
@NVME_REQUEST_NULL = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@tailq = common dso_local global i32 0, align 4
@stailq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_qpair*, %struct.nvme_tracker*, %struct.nvme_completion.0*, i64)* @nvme_qpair_complete_tracker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_qpair_complete_tracker(%struct.nvme_qpair* %0, %struct.nvme_tracker* %1, %struct.nvme_completion.0* %2, i64 %3) #0 {
  %5 = alloca %struct.nvme_qpair*, align 8
  %6 = alloca %struct.nvme_tracker*, align 8
  %7 = alloca %struct.nvme_completion.0*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvme_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %5, align 8
  store %struct.nvme_tracker* %1, %struct.nvme_tracker** %6, align 8
  store %struct.nvme_completion.0* %2, %struct.nvme_completion.0** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.nvme_tracker*, %struct.nvme_tracker** %6, align 8
  %14 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %13, i32 0, i32 0
  %15 = load %struct.nvme_request*, %struct.nvme_request** %14, align 8
  store %struct.nvme_request* %15, %struct.nvme_request** %9, align 8
  %16 = load %struct.nvme_completion.0*, %struct.nvme_completion.0** %7, align 8
  %17 = call i32 @nvme_completion_is_error(%struct.nvme_completion.0* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.nvme_completion.0*, %struct.nvme_completion.0** %7, align 8
  %19 = call i32 @nvme_completion_is_retry(%struct.nvme_completion.0* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %27 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @nvme_retry_count, align 8
  %30 = icmp slt i64 %28, %29
  br label %31

31:                                               ; preds = %25, %22, %4
  %32 = phi i1 [ false, %22 ], [ false, %4 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %38 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %46 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @nvme_retry_count, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %55 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %50, %44, %41
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @ERROR_PRINT_ALL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @ERROR_PRINT_NO_RETRY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68, %61
  %73 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %74 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %75 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %74, i32 0, i32 4
  %76 = call i32 @nvme_qpair_print_command(%struct.nvme_qpair* %73, %struct.TYPE_4__* %75)
  %77 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %78 = load %struct.nvme_completion.0*, %struct.nvme_completion.0** %7, align 8
  %79 = call i32 @nvme_qpair_print_completion(%struct.nvme_qpair* %77, %struct.nvme_completion.0* %78)
  br label %80

80:                                               ; preds = %72, %68, %65, %58
  %81 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %82 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %81, i32 0, i32 6
  %83 = load i32**, i32*** %82, align 8
  %84 = load %struct.nvme_completion.0*, %struct.nvme_completion.0** %7, align 8
  %85 = getelementptr inbounds %struct.nvme_completion.0, %struct.nvme_completion.0* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32*, i32** %83, i64 %86
  store i32* null, i32** %87, align 8
  %88 = load %struct.nvme_completion.0*, %struct.nvme_completion.0** %7, align 8
  %89 = getelementptr inbounds %struct.nvme_completion.0, %struct.nvme_completion.0* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %92 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %90, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @KASSERT(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %99 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %98, i32 0, i32 3
  %100 = load i32 (i32, %struct.nvme_completion*)*, i32 (i32, %struct.nvme_completion*)** %99, align 8
  %101 = icmp ne i32 (i32, %struct.nvme_completion*)* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %80
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %107 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %106, i32 0, i32 3
  %108 = load i32 (i32, %struct.nvme_completion*)*, i32 (i32, %struct.nvme_completion*)** %107, align 8
  %109 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %110 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.nvme_completion.0*, %struct.nvme_completion.0** %7, align 8
  %113 = bitcast %struct.nvme_completion.0* %112 to %struct.nvme_completion*
  %114 = call i32 %108(i32 %111, %struct.nvme_completion* %113)
  br label %115

115:                                              ; preds = %105, %102, %80
  %116 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %117 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %116, i32 0, i32 0
  %118 = call i32 @mtx_lock(i32* %117)
  %119 = load %struct.nvme_tracker*, %struct.nvme_tracker** %6, align 8
  %120 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %119, i32 0, i32 2
  %121 = call i32 @callout_stop(i32* %120)
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %115
  %125 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %126 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %130 = load %struct.nvme_tracker*, %struct.nvme_tracker** %6, align 8
  %131 = call i32 @nvme_qpair_submit_tracker(%struct.nvme_qpair* %129, %struct.nvme_tracker* %130)
  br label %194

132:                                              ; preds = %115
  %133 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %134 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @NVME_REQUEST_NULL, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %140 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.nvme_tracker*, %struct.nvme_tracker** %6, align 8
  %143 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %146 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @bus_dmamap_sync(i32 %141, i32 %144, i32 %147)
  %149 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %150 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.nvme_tracker*, %struct.nvme_tracker** %6, align 8
  %153 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @bus_dmamap_unload(i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %138, %132
  %157 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %158 = call i32 @nvme_free_request(%struct.nvme_request* %157)
  %159 = load %struct.nvme_tracker*, %struct.nvme_tracker** %6, align 8
  %160 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %159, i32 0, i32 0
  store %struct.nvme_request* null, %struct.nvme_request** %160, align 8
  %161 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %162 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %161, i32 0, i32 4
  %163 = load %struct.nvme_tracker*, %struct.nvme_tracker** %6, align 8
  %164 = load i32, i32* @tailq, align 4
  %165 = call i32 @TAILQ_REMOVE(i32* %162, %struct.nvme_tracker* %163, i32 %164)
  %166 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %167 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %166, i32 0, i32 3
  %168 = load %struct.nvme_tracker*, %struct.nvme_tracker** %6, align 8
  %169 = load i32, i32* @tailq, align 4
  %170 = call i32 @TAILQ_INSERT_HEAD(i32* %167, %struct.nvme_tracker* %168, i32 %169)
  %171 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %172 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %171, i32 0, i32 1
  %173 = call i32 @STAILQ_EMPTY(i32* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %193, label %175

175:                                              ; preds = %156
  %176 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %177 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %176, i32 0, i32 2
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %175
  %183 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %184 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %183, i32 0, i32 1
  %185 = call %struct.nvme_request* @STAILQ_FIRST(i32* %184)
  store %struct.nvme_request* %185, %struct.nvme_request** %9, align 8
  %186 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %187 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %186, i32 0, i32 1
  %188 = load i32, i32* @stailq, align 4
  %189 = call i32 @STAILQ_REMOVE_HEAD(i32* %187, i32 %188)
  %190 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %191 = load %struct.nvme_request*, %struct.nvme_request** %9, align 8
  %192 = call i32 @_nvme_qpair_submit_request(%struct.nvme_qpair* %190, %struct.nvme_request* %191)
  br label %193

193:                                              ; preds = %182, %175, %156
  br label %194

194:                                              ; preds = %193, %124
  %195 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %196 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %195, i32 0, i32 0
  %197 = call i32 @mtx_unlock(i32* %196)
  ret void
}

declare dso_local i32 @nvme_completion_is_error(%struct.nvme_completion.0*) #1

declare dso_local i32 @nvme_completion_is_retry(%struct.nvme_completion.0*) #1

declare dso_local i32 @nvme_qpair_print_command(%struct.nvme_qpair*, %struct.TYPE_4__*) #1

declare dso_local i32 @nvme_qpair_print_completion(%struct.nvme_qpair*, %struct.nvme_completion.0*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @nvme_qpair_submit_tracker(%struct.nvme_qpair*, %struct.nvme_tracker*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @nvme_free_request(%struct.nvme_request*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nvme_tracker*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.nvme_tracker*, i32) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.nvme_request* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @_nvme_qpair_submit_request(%struct.nvme_qpair*, %struct.nvme_request*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
