; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_add_radix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_add_radix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { %struct.radix_node_head*, %struct.radix_node_head* }
%struct.radix_node_head = type { i32, %struct.radix_node* (i32, i32, i32*, i32*)*, %struct.radix_node* (i32, i32, i32*)* }
%struct.radix_node = type { i32 }
%struct.tentry_info = type { i64, i32, i32 }
%struct.radix_cfg = type { i32, i32 }
%struct.ta_buf_radix = type { i32*, i32, i32 }
%struct.radix_addr_entry = type { i32 }
%struct.radix_addr_xentry = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@TEI_FLAGS_UPDATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@TEI_FLAGS_UPDATED = common dso_local global i32 0, align 4
@TEI_FLAGS_DONTADD = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, %struct.tentry_info*, i8*, i32*)* @ta_add_radix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_add_radix(i8* %0, %struct.table_info* %1, %struct.tentry_info* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.table_info*, align 8
  %9 = alloca %struct.tentry_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.radix_cfg*, align 8
  %13 = alloca %struct.radix_node_head*, align 8
  %14 = alloca %struct.radix_node*, align 8
  %15 = alloca %struct.ta_buf_radix*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.table_info* %1, %struct.table_info** %8, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.radix_cfg*
  store %struct.radix_cfg* %19, %struct.radix_cfg** %12, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.ta_buf_radix*
  store %struct.ta_buf_radix* %21, %struct.ta_buf_radix** %15, align 8
  %22 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %23 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_INET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %5
  %28 = load %struct.table_info*, %struct.table_info** %8, align 8
  %29 = getelementptr inbounds %struct.table_info, %struct.table_info* %28, i32 0, i32 1
  %30 = load %struct.radix_node_head*, %struct.radix_node_head** %29, align 8
  store %struct.radix_node_head* %30, %struct.radix_node_head** %13, align 8
  %31 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %32 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %35 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = bitcast i32* %36 to %struct.radix_addr_entry*
  %38 = getelementptr inbounds %struct.radix_addr_entry, %struct.radix_addr_entry* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  br label %51

39:                                               ; preds = %5
  %40 = load %struct.table_info*, %struct.table_info** %8, align 8
  %41 = getelementptr inbounds %struct.table_info, %struct.table_info* %40, i32 0, i32 0
  %42 = load %struct.radix_node_head*, %struct.radix_node_head** %41, align 8
  store %struct.radix_node_head* %42, %struct.radix_node_head** %13, align 8
  %43 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %44 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %47 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to %struct.radix_addr_xentry*
  %50 = getelementptr inbounds %struct.radix_addr_xentry, %struct.radix_addr_xentry* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %39, %27
  %52 = load %struct.radix_node_head*, %struct.radix_node_head** %13, align 8
  %53 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %52, i32 0, i32 2
  %54 = load %struct.radix_node* (i32, i32, i32*)*, %struct.radix_node* (i32, i32, i32*)** %53, align 8
  %55 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %56 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %59 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.radix_node_head*, %struct.radix_node_head** %13, align 8
  %62 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %61, i32 0, i32 0
  %63 = call %struct.radix_node* %54(i32 %57, i32 %60, i32* %62)
  store %struct.radix_node* %63, %struct.radix_node** %14, align 8
  %64 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %65 = icmp ne %struct.radix_node* %64, null
  br i1 %65, label %66, label %105

66:                                               ; preds = %51
  %67 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %68 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TEI_FLAGS_UPDATE, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @EEXIST, align 4
  store i32 %74, i32* %6, align 4
  br label %154

75:                                               ; preds = %66
  %76 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %77 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AF_INET, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %83 = bitcast %struct.radix_node* %82 to %struct.radix_addr_entry*
  %84 = getelementptr inbounds %struct.radix_addr_entry, %struct.radix_addr_entry* %83, i32 0, i32 0
  store i32* %84, i32** %16, align 8
  br label %89

85:                                               ; preds = %75
  %86 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %87 = bitcast %struct.radix_node* %86 to %struct.radix_addr_xentry*
  %88 = getelementptr inbounds %struct.radix_addr_xentry, %struct.radix_addr_xentry* %87, i32 0, i32 0
  store i32* %88, i32** %16, align 8
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %17, align 4
  %92 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %93 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %16, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %98 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @TEI_FLAGS_UPDATED, align 4
  %100 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %101 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32*, i32** %11, align 8
  store i32 0, i32* %104, align 4
  store i32 0, i32* %6, align 4
  br label %154

105:                                              ; preds = %51
  %106 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %107 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @TEI_FLAGS_DONTADD, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @EFBIG, align 4
  store i32 %113, i32* %6, align 4
  br label %154

114:                                              ; preds = %105
  %115 = load %struct.radix_node_head*, %struct.radix_node_head** %13, align 8
  %116 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %115, i32 0, i32 1
  %117 = load %struct.radix_node* (i32, i32, i32*, i32*)*, %struct.radix_node* (i32, i32, i32*, i32*)** %116, align 8
  %118 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %119 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %122 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.radix_node_head*, %struct.radix_node_head** %13, align 8
  %125 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %124, i32 0, i32 0
  %126 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %127 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call %struct.radix_node* %117(i32 %120, i32 %123, i32* %125, i32* %128)
  store %struct.radix_node* %129, %struct.radix_node** %14, align 8
  %130 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %131 = icmp eq %struct.radix_node* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %114
  %133 = load i32, i32* @EINVAL, align 4
  store i32 %133, i32* %6, align 4
  br label %154

134:                                              ; preds = %114
  %135 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %136 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @AF_INET, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.radix_cfg*, %struct.radix_cfg** %12, align 8
  %142 = getelementptr inbounds %struct.radix_cfg, %struct.radix_cfg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %150

145:                                              ; preds = %134
  %146 = load %struct.radix_cfg*, %struct.radix_cfg** %12, align 8
  %147 = getelementptr inbounds %struct.radix_cfg, %struct.radix_cfg* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %152 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %151, i32 0, i32 0
  store i32* null, i32** %152, align 8
  %153 = load i32*, i32** %11, align 8
  store i32 1, i32* %153, align 4
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %150, %132, %112, %89, %73
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
