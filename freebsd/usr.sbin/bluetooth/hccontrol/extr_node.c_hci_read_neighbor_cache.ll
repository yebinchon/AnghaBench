; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_node.c_hci_read_neighbor_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_node.c_hci_read_neighbor_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_btsocket_hci_raw_node_neighbor_cache = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32, i32, i32, i32 }

@OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@__const.hci_read_neighbor_cache.addrtype2str = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)], align 16
@NG_HCI_MAX_NEIGHBOR_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_NEIGHBOR_CACHE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"T BD_ADDR           Features                Clock offset Page scan Rep. scan\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"%1s %-17.17s %02x %02x %02x %02x %02x %02x %02x %02x %#12x %#9x %#9x\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_read_neighbor_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_read_neighbor_cache(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ng_btsocket_hci_raw_node_neighbor_cache, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8*], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* @OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = bitcast [4 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i8*]* @__const.hci_read_neighbor_cache.addrtype2str to i8*), i64 32, i1 false)
  %15 = call i32 @memset(%struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 16)
  %16 = load i32, i32* @NG_HCI_MAX_NEIGHBOR_NUM, align 4
  %17 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @NG_HCI_MAX_NEIGHBOR_NUM, align 4
  %19 = call %struct.TYPE_3__* @calloc(i32 %18, i32 4)
  %20 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %20, align 8
  %21 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* @errno, align 4
  %26 = load i32, i32* @ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %187

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_NEIGHBOR_CACHE, align 4
  %30 = call i64 @ioctl(i32 %28, i32 %29, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 16)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ERROR, align 4
  store i32 %33, i32* %10, align 4
  br label %182

34:                                               ; preds = %27
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %178, %34
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %181

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp uge i64 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 3, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* @stdout, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 7
  %66 = call i8* @hci_bdaddr2str(i32* %65)
  %67 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 5
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 6
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 7
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i8* %59, i8* %66, i32 %75, i32 %84, i32 %93, i32 %102, i32 %111, i32 %120, i32 %129, i32 %138, i32 %145, i32 %152, i32 %159)
  %161 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @hci_dump_adv(i32 %167, i32 %174)
  %176 = load i32, i32* @stdout, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %178

178:                                              ; preds = %54
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %37

181:                                              ; preds = %37
  br label %182

182:                                              ; preds = %181, %32
  %183 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %8, i32 0, i32 1
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = call i32 @free(%struct.TYPE_3__* %184)
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %182, %24
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.ng_btsocket_hci_raw_node_neighbor_cache*, i32, i32) #2

declare dso_local %struct.TYPE_3__* @calloc(i32, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_hci_raw_node_neighbor_cache*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @hci_bdaddr2str(i32*) #2

declare dso_local i32 @hci_dump_adv(i32, i32) #2

declare dso_local i32 @free(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
