; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_add_ifidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_add_ifidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.tentry_info = type { i32, i32, i64 }
%struct.iftable_cfg = type { i32, i32, i32 }
%struct.ifentry = type { i32, %struct.TYPE_2__, i32, %struct.iftable_cfg* }
%struct.TYPE_2__ = type { %struct.ipfw_iface* }
%struct.ipfw_iface = type { i64, i32 }
%struct.ta_buf_ifidx = type { %struct.ifentry* }
%struct.ifidx = type { i32 }

@TEI_FLAGS_UPDATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@TEI_FLAGS_UPDATED = common dso_local global i32 0, align 4
@TEI_FLAGS_DONTADD = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, %struct.tentry_info*, i8*, i32*)* @ta_add_ifidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_add_ifidx(i8* %0, %struct.table_info* %1, %struct.tentry_info* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.table_info*, align 8
  %9 = alloca %struct.tentry_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iftable_cfg*, align 8
  %13 = alloca %struct.ifentry*, align 8
  %14 = alloca %struct.ifentry*, align 8
  %15 = alloca %struct.ta_buf_ifidx*, align 8
  %16 = alloca %struct.ipfw_iface*, align 8
  %17 = alloca %struct.ifidx*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.table_info* %1, %struct.table_info** %8, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.ta_buf_ifidx*
  store %struct.ta_buf_ifidx* %21, %struct.ta_buf_ifidx** %15, align 8
  %22 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %23 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %18, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.iftable_cfg*
  store %struct.iftable_cfg* %27, %struct.iftable_cfg** %12, align 8
  %28 = load %struct.ta_buf_ifidx*, %struct.ta_buf_ifidx** %15, align 8
  %29 = getelementptr inbounds %struct.ta_buf_ifidx, %struct.ta_buf_ifidx* %28, i32 0, i32 0
  %30 = load %struct.ifentry*, %struct.ifentry** %29, align 8
  store %struct.ifentry* %30, %struct.ifentry** %13, align 8
  %31 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %32 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %33 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %32, i32 0, i32 3
  store %struct.iftable_cfg* %31, %struct.iftable_cfg** %33, align 8
  %34 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %35 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %38 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %40 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %18, align 8
  %43 = call i64 @ipfw_objhash_lookup_name(i32 %41, i32 0, i8* %42)
  %44 = inttoptr i64 %43 to %struct.ifentry*
  store %struct.ifentry* %44, %struct.ifentry** %14, align 8
  %45 = load %struct.ifentry*, %struct.ifentry** %14, align 8
  %46 = icmp ne %struct.ifentry* %45, null
  br i1 %46, label %47, label %93

47:                                               ; preds = %5
  %48 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %49 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TEI_FLAGS_UPDATE, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @EEXIST, align 4
  store i32 %55, i32* %6, align 4
  br label %122

56:                                               ; preds = %47
  %57 = load %struct.ifentry*, %struct.ifentry** %14, align 8
  %58 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %19, align 4
  %60 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %61 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ifentry*, %struct.ifentry** %14, align 8
  %64 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %19, align 4
  %66 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %67 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ifentry*, %struct.ifentry** %14, align 8
  %69 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.ipfw_iface*, %struct.ipfw_iface** %70, align 8
  store %struct.ipfw_iface* %71, %struct.ipfw_iface** %16, align 8
  %72 = load %struct.ipfw_iface*, %struct.ipfw_iface** %16, align 8
  %73 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %56
  %77 = load %struct.table_info*, %struct.table_info** %8, align 8
  %78 = load %struct.ipfw_iface*, %struct.ipfw_iface** %16, align 8
  %79 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %78, i32 0, i32 1
  %80 = call %struct.ifidx* @ifidx_find(%struct.table_info* %77, i32* %79)
  store %struct.ifidx* %80, %struct.ifidx** %17, align 8
  %81 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %82 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ifidx*, %struct.ifidx** %17, align 8
  %85 = getelementptr inbounds %struct.ifidx, %struct.ifidx* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %76, %56
  %87 = load i32, i32* @TEI_FLAGS_UPDATED, align 4
  %88 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %89 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32*, i32** %11, align 8
  store i32 0, i32* %92, align 4
  store i32 0, i32* %6, align 4
  br label %122

93:                                               ; preds = %5
  %94 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %95 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TEI_FLAGS_DONTADD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @EFBIG, align 4
  store i32 %101, i32* %6, align 4
  br label %122

102:                                              ; preds = %93
  %103 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %104 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %107 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %106, i32 0, i32 2
  %108 = call i32 @ipfw_objhash_add(i32 %105, i32* %107)
  %109 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %110 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ifentry*, %struct.ifentry** %13, align 8
  %113 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %112, i32 0, i32 1
  %114 = call i32 @ipfw_iface_add_notify(i32 %111, %struct.TYPE_2__* %113)
  %115 = load %struct.iftable_cfg*, %struct.iftable_cfg** %12, align 8
  %116 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.ta_buf_ifidx*, %struct.ta_buf_ifidx** %15, align 8
  %120 = getelementptr inbounds %struct.ta_buf_ifidx, %struct.ta_buf_ifidx* %119, i32 0, i32 0
  store %struct.ifentry* null, %struct.ifentry** %120, align 8
  %121 = load i32*, i32** %11, align 8
  store i32 1, i32* %121, align 4
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %102, %100, %86, %54
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i64 @ipfw_objhash_lookup_name(i32, i32, i8*) #1

declare dso_local %struct.ifidx* @ifidx_find(%struct.table_info*, i32*) #1

declare dso_local i32 @ipfw_objhash_add(i32, i32*) #1

declare dso_local i32 @ipfw_iface_add_notify(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
