; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_del_radix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_del_radix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { %struct.radix_node_head*, %struct.radix_node_head* }
%struct.radix_node_head = type { i32, %struct.radix_node* (i32, i32, i32*)* }
%struct.radix_node = type { i32 }
%struct.tentry_info = type { i64, i32 }
%struct.radix_cfg = type { i32, i32 }
%struct.ta_buf_radix = type { %struct.radix_node*, i32, i32 }
%struct.radix_addr_entry = type { i32 }
%struct.radix_addr_xentry = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, %struct.tentry_info*, i8*, i32*)* @ta_del_radix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_del_radix(i8* %0, %struct.table_info* %1, %struct.tentry_info* %2, i8* %3, i32* %4) #0 {
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
  store i8* %0, i8** %7, align 8
  store %struct.table_info* %1, %struct.table_info** %8, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.radix_cfg*
  store %struct.radix_cfg* %17, %struct.radix_cfg** %12, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.ta_buf_radix*
  store %struct.ta_buf_radix* %19, %struct.ta_buf_radix** %15, align 8
  %20 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %21 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.table_info*, %struct.table_info** %8, align 8
  %27 = getelementptr inbounds %struct.table_info, %struct.table_info* %26, i32 0, i32 1
  %28 = load %struct.radix_node_head*, %struct.radix_node_head** %27, align 8
  store %struct.radix_node_head* %28, %struct.radix_node_head** %13, align 8
  br label %33

29:                                               ; preds = %5
  %30 = load %struct.table_info*, %struct.table_info** %8, align 8
  %31 = getelementptr inbounds %struct.table_info, %struct.table_info* %30, i32 0, i32 0
  %32 = load %struct.radix_node_head*, %struct.radix_node_head** %31, align 8
  store %struct.radix_node_head* %32, %struct.radix_node_head** %13, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.radix_node_head*, %struct.radix_node_head** %13, align 8
  %35 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %34, i32 0, i32 1
  %36 = load %struct.radix_node* (i32, i32, i32*)*, %struct.radix_node* (i32, i32, i32*)** %35, align 8
  %37 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %38 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %41 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.radix_node_head*, %struct.radix_node_head** %13, align 8
  %44 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %43, i32 0, i32 0
  %45 = call %struct.radix_node* %36(i32 %39, i32 %42, i32* %44)
  store %struct.radix_node* %45, %struct.radix_node** %14, align 8
  %46 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %47 = icmp eq %struct.radix_node* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* @ENOENT, align 4
  store i32 %49, i32* %6, align 4
  br label %91

50:                                               ; preds = %33
  %51 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %52 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AF_INET, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %58 = bitcast %struct.radix_node* %57 to %struct.radix_addr_entry*
  %59 = getelementptr inbounds %struct.radix_addr_entry, %struct.radix_addr_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %62 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %70

63:                                               ; preds = %50
  %64 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %65 = bitcast %struct.radix_node* %64 to %struct.radix_addr_xentry*
  %66 = getelementptr inbounds %struct.radix_addr_xentry, %struct.radix_addr_xentry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %69 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %63, %56
  %71 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %72 = load %struct.ta_buf_radix*, %struct.ta_buf_radix** %15, align 8
  %73 = getelementptr inbounds %struct.ta_buf_radix, %struct.ta_buf_radix* %72, i32 0, i32 0
  store %struct.radix_node* %71, %struct.radix_node** %73, align 8
  %74 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %75 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AF_INET, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.radix_cfg*, %struct.radix_cfg** %12, align 8
  %81 = getelementptr inbounds %struct.radix_cfg, %struct.radix_cfg* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  br label %89

84:                                               ; preds = %70
  %85 = load %struct.radix_cfg*, %struct.radix_cfg** %12, align 8
  %86 = getelementptr inbounds %struct.radix_cfg, %struct.radix_cfg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32*, i32** %11, align 8
  store i32 1, i32* %90, align 4
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %48
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
