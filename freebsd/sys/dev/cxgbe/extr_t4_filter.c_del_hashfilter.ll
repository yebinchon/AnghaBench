; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_del_hashfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_del_hashfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.tid_info }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tid_info = type { i32, i32, i32, i32, i32* }
%struct.t4_filter = type { i32, i32 }
%struct.filter_entry = type { i64, i32, i32, i32, i32 }
%struct.wrq_cookie = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@M_CXGBE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_filter*)* @del_hashfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_hashfilter(%struct.adapter* %0, %struct.t4_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_filter*, align 8
  %6 = alloca %struct.tid_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.filter_entry*, align 8
  %9 = alloca %struct.wrq_cookie, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_filter* %1, %struct.t4_filter** %5, align 8
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  store %struct.tid_info* %14, %struct.tid_info** %6, align 8
  %15 = call i32 (...) @del_hashfilter_wrlen()
  store i32 %15, i32* %11, align 4
  %16 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %17 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %20 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @MPASS(i32 %35)
  %37 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %38 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %2
  %46 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %47 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %2
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %3, align 4
  br label %176

53:                                               ; preds = %45
  %54 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %55 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %54, i32 0, i32 2
  %56 = call i32 @mtx_lock(i32* %55)
  %57 = load %struct.adapter*, %struct.adapter** %4, align 8
  %58 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %59 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.filter_entry* @lookup_hftid(%struct.adapter* %57, i32 %60)
  store %struct.filter_entry* %61, %struct.filter_entry** %8, align 8
  %62 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %63 = icmp eq %struct.filter_entry* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %53
  %65 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %66 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64, %53
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %10, align 4
  br label %171

71:                                               ; preds = %64
  %72 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %73 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %76 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @MPASS(i32 %79)
  %81 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %82 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* @EPERM, align 4
  store i32 %86, i32* %10, align 4
  br label %171

87:                                               ; preds = %71
  %88 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %89 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @EBUSY, align 4
  store i32 %93, i32* %10, align 4
  br label %171

94:                                               ; preds = %87
  %95 = load %struct.adapter*, %struct.adapter** %4, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @howmany(i32 %100, i32 16)
  %102 = call i8* @start_wrq_wr(i32* %99, i32 %101, %struct.wrq_cookie* %9)
  store i8* %102, i8** %7, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* @ENOMEM, align 4
  store i32 %106, i32* %10, align 4
  br label %171

107:                                              ; preds = %94
  %108 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %109 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.adapter*, %struct.adapter** %4, align 8
  %114 = getelementptr inbounds %struct.adapter, %struct.adapter* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @mk_del_hashfilter_wr(i32 %110, i8* %111, i32 %112, i32 %117)
  %119 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %120 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %119, i32 0, i32 2
  store i32 1, i32* %120, align 4
  %121 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %122 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %121, i32 0, i32 3
  store i32 1, i32* %122, align 8
  %123 = load %struct.adapter*, %struct.adapter** %4, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @commit_wrq_wr(i32* %127, i8* %128, %struct.wrq_cookie* %9)
  %130 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %131 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.t4_filter*, %struct.t4_filter** %5, align 8
  %134 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %169, %107
  %136 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %137 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @MPASS(i32 %138)
  %140 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %141 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %135
  %145 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %146 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %151 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %150, i32 0, i32 2
  store i32 0, i32* %151, align 4
  %152 = load i32, i32* @EIO, align 4
  store i32 %152, i32* %10, align 4
  br label %157

153:                                              ; preds = %144
  store i32 0, i32* %10, align 4
  %154 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %155 = load i32, i32* @M_CXGBE, align 4
  %156 = call i32 @free(%struct.filter_entry* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %149
  br label %170

158:                                              ; preds = %135
  %159 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %160 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %159, i32 0, i32 3
  %161 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %162 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %161, i32 0, i32 2
  %163 = call i64 @cv_wait_sig(i32* %160, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %167 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %166, i32 0, i32 2
  store i32 0, i32* %167, align 4
  %168 = load i32, i32* @EINPROGRESS, align 4
  store i32 %168, i32* %10, align 4
  br label %170

169:                                              ; preds = %158
  br label %135

170:                                              ; preds = %165, %157
  br label %171

171:                                              ; preds = %170, %105, %92, %85, %69
  %172 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %173 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %172, i32 0, i32 2
  %174 = call i32 @mtx_unlock(i32* %173)
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %171, %51
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @del_hashfilter_wrlen(...) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.filter_entry* @lookup_hftid(%struct.adapter*, i32) #1

declare dso_local i8* @start_wrq_wr(i32*, i32, %struct.wrq_cookie*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @mk_del_hashfilter_wr(i32, i8*, i32, i32) #1

declare dso_local i32 @commit_wrq_wr(i32*, i8*, %struct.wrq_cookie*) #1

declare dso_local i32 @free(%struct.filter_entry*, i32) #1

declare dso_local i64 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
