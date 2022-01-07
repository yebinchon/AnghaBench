; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_nm_find_bridge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_nm_find_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_bridge = type { i32, i64, i32, i32*, i32*, i32*, %struct.netmap_bdg_ops, %struct.netmap_bdg_ops, i32 }
%struct.netmap_bdg_ops = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"invalid bridge name %s\00", align 1
@NM_BDG_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"found '%.*s' at %d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"create new bridge %s with ports %d\00", align 1
@NM_BDG_HASH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to allocate hash table\00", align 1
@NM_BDG_MAXPORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nm_bridge* @nm_find_bridge(i8* %0, i32 %1, %struct.netmap_bdg_ops* %2) #0 {
  %4 = alloca %struct.nm_bridge*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netmap_bdg_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nm_bridge*, align 8
  %11 = alloca %struct.nm_bridge*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nm_bridge*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netmap_bdg_ops* %2, %struct.netmap_bdg_ops** %7, align 8
  store %struct.nm_bridge* null, %struct.nm_bridge** %10, align 8
  %14 = call i32 (...) @NMG_LOCK_ASSERT()
  %15 = call i32 @netmap_bns_getbridges(%struct.nm_bridge** %11, i32* %12)
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.netmap_bdg_ops*, %struct.netmap_bdg_ops** %7, align 8
  %18 = icmp ne %struct.netmap_bdg_ops* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.netmap_bdg_ops*, %struct.netmap_bdg_ops** %7, align 8
  %21 = getelementptr inbounds %struct.netmap_bdg_ops, %struct.netmap_bdg_ops* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlen(i32 %22)
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i32 [ %23, %19 ], [ 0, %24 ]
  %27 = call i32 @nm_bdg_name_validate(i8* %16, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i8*, i8** %5, align 8
  br label %36

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8* [ %34, %33 ], [ null, %35 ]
  %38 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %37)
  store %struct.nm_bridge* null, %struct.nm_bridge** %4, align 8
  br label %173

39:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %94, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %97

44:                                               ; preds = %40
  %45 = load %struct.nm_bridge*, %struct.nm_bridge** %11, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %45, i64 %47
  store %struct.nm_bridge* %48, %struct.nm_bridge** %13, align 8
  %49 = load %struct.nm_bridge*, %struct.nm_bridge** %13, align 8
  %50 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NM_BDG_ACTIVE, align 4
  %53 = and i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = load %struct.nm_bridge*, %struct.nm_bridge** %13, align 8
  %56 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %44
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %65 = icmp eq %struct.nm_bridge* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load %struct.nm_bridge*, %struct.nm_bridge** %13, align 8
  store %struct.nm_bridge* %67, %struct.nm_bridge** %10, align 8
  br label %68

68:                                               ; preds = %66, %63, %60
  br label %93

69:                                               ; preds = %44
  %70 = load %struct.nm_bridge*, %struct.nm_bridge** %13, align 8
  %71 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %94

76:                                               ; preds = %69
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.nm_bridge*, %struct.nm_bridge** %13, align 8
  %79 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @strncmp(i8* %77, i32 %80, i32 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i8*, i32, i64, ...) @nm_prdis(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %85, i64 %87, i32 %88)
  %90 = load %struct.nm_bridge*, %struct.nm_bridge** %13, align 8
  store %struct.nm_bridge* %90, %struct.nm_bridge** %10, align 8
  br label %97

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92, %68
  br label %94

94:                                               ; preds = %93, %75
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %40

97:                                               ; preds = %84, %40
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %171

101:                                              ; preds = %97
  %102 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %103 = icmp ne %struct.nm_bridge* %102, null
  br i1 %103, label %104, label %171

104:                                              ; preds = %101
  %105 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %106 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %109 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i8*, i32, i64, ...) @nm_prdis(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %107, i64 %110)
  %112 = load i32, i32* @NM_BDG_HASH, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 4, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32* @nm_os_malloc(i32 %115)
  %117 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %118 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %117, i32 0, i32 4
  store i32* %116, i32** %118, align 8
  %119 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %120 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %104
  %124 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store %struct.nm_bridge* null, %struct.nm_bridge** %4, align 8
  br label %173

125:                                              ; preds = %104
  %126 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %127 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @strncpy(i32 %128, i8* %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %134 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %136 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %149, %125
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @NM_BDG_MAXPORTS, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %144 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %142, i32* %148, align 4
  br label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %137

152:                                              ; preds = %137
  %153 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %154 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %153, i32 0, i32 7
  %155 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %156 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %155, i32 0, i32 6
  %157 = load %struct.netmap_bdg_ops*, %struct.netmap_bdg_ops** %7, align 8
  %158 = bitcast %struct.netmap_bdg_ops* %156 to i8*
  %159 = bitcast %struct.netmap_bdg_ops* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 4 %159, i64 4, i1 false)
  %160 = bitcast %struct.netmap_bdg_ops* %154 to i8*
  %161 = bitcast %struct.netmap_bdg_ops* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 8 %161, i64 4, i1 false)
  %162 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %163 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %166 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %165, i32 0, i32 5
  store i32* %164, i32** %166, align 8
  %167 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %168 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %167, i32 0, i32 0
  store i32 0, i32* %168, align 8
  %169 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  %170 = call i32 @NM_BNS_GET(%struct.nm_bridge* %169)
  br label %171

171:                                              ; preds = %152, %101, %97
  %172 = load %struct.nm_bridge*, %struct.nm_bridge** %10, align 8
  store %struct.nm_bridge* %172, %struct.nm_bridge** %4, align 8
  br label %173

173:                                              ; preds = %171, %123, %36
  %174 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  ret %struct.nm_bridge* %174
}

declare dso_local i32 @NMG_LOCK_ASSERT(...) #1

declare dso_local i32 @netmap_bns_getbridges(%struct.nm_bridge**, i32*) #1

declare dso_local i32 @nm_bdg_name_validate(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @nm_prerr(i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @nm_prdis(i8*, i32, i64, ...) #1

declare dso_local i32* @nm_os_malloc(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NM_BNS_GET(%struct.nm_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
