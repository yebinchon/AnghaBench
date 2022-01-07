; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_blockcache.c_mkuz_blkcache_regblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_blockcache.c_mkuz_blkcache_regblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mkuz_blkcache_itm* }
%struct.mkuz_blkcache_itm = type { %struct.mkuz_blk_info, %struct.mkuz_blkcache_itm* }
%struct.mkuz_blk_info = type { i32, i64, i64, i32 }
%struct.mkuz_blk = type { %struct.mkuz_blk_info }

@blkcache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"verify_match\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mkuz_blk_info* @mkuz_blkcache_regblock(i32 %0, %struct.mkuz_blk* %1) #0 {
  %3 = alloca %struct.mkuz_blk_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mkuz_blk*, align 8
  %6 = alloca %struct.mkuz_blkcache_itm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store %struct.mkuz_blk* %1, %struct.mkuz_blk** %5, align 8
  %9 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %10 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.mkuz_blk_info, %struct.mkuz_blk_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call zeroext i8 @digest_fold(i32 %12)
  store i8 %13, i8* %8, align 1
  %14 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @blkcache, i32 0, i32 0), align 8
  %15 = load i8, i8* %8, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %14, i64 %16
  %18 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.mkuz_blk_info, %struct.mkuz_blk_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @blkcache, i32 0, i32 0), align 8
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %23, i64 %25
  store %struct.mkuz_blkcache_itm* %26, %struct.mkuz_blkcache_itm** %6, align 8
  br label %104

27:                                               ; preds = %2
  %28 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @blkcache, i32 0, i32 0), align 8
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %28, i64 %30
  store %struct.mkuz_blkcache_itm* %31, %struct.mkuz_blkcache_itm** %6, align 8
  br label %32

32:                                               ; preds = %59, %27
  %33 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %34 = icmp ne %struct.mkuz_blkcache_itm* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %37 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.mkuz_blk_info, %struct.mkuz_blk_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %41 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.mkuz_blk_info, %struct.mkuz_blk_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %59

46:                                               ; preds = %35
  %47 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %48 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.mkuz_blk_info, %struct.mkuz_blk_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %52 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.mkuz_blk_info, %struct.mkuz_blk_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @memcmp(i32 %50, i32 %54, i32 4)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %63

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %45
  %60 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %61 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %60, i32 0, i32 1
  %62 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %61, align 8
  store %struct.mkuz_blkcache_itm* %62, %struct.mkuz_blkcache_itm** %6, align 8
  br label %32

63:                                               ; preds = %57, %32
  %64 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %65 = icmp ne %struct.mkuz_blkcache_itm* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %69 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %70 = call i32 @verify_match(i32 %67, %struct.mkuz_blk* %68, %struct.mkuz_blkcache_itm* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %75 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %74, i32 0, i32 0
  store %struct.mkuz_blk_info* %75, %struct.mkuz_blk_info** %3, align 8
  br label %111

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store %struct.mkuz_blk_info* null, %struct.mkuz_blk_info** %3, align 8
  br label %111

80:                                               ; preds = %76
  %81 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.mkuz_blk_info* null, %struct.mkuz_blk_info** %3, align 8
  br label %111

82:                                               ; preds = %63
  %83 = call %struct.mkuz_blkcache_itm* @malloc(i32 40)
  store %struct.mkuz_blkcache_itm* %83, %struct.mkuz_blkcache_itm** %6, align 8
  %84 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %85 = icmp eq %struct.mkuz_blkcache_itm* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store %struct.mkuz_blk_info* null, %struct.mkuz_blk_info** %3, align 8
  br label %111

87:                                               ; preds = %82
  %88 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %89 = call i32 @memset(%struct.mkuz_blkcache_itm* %88, i8 signext 0, i32 40)
  %90 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @blkcache, i32 0, i32 0), align 8
  %91 = load i8, i8* %8, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %90, i64 %92
  %94 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %93, i32 0, i32 1
  %95 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %94, align 8
  %96 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %97 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %96, i32 0, i32 1
  store %struct.mkuz_blkcache_itm* %95, %struct.mkuz_blkcache_itm** %97, align 8
  %98 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %99 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @blkcache, i32 0, i32 0), align 8
  %100 = load i8, i8* %8, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %99, i64 %101
  %103 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %102, i32 0, i32 1
  store %struct.mkuz_blkcache_itm* %98, %struct.mkuz_blkcache_itm** %103, align 8
  br label %104

104:                                              ; preds = %87, %22
  %105 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %106 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %105, i32 0, i32 0
  %107 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %108 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %107, i32 0, i32 0
  %109 = bitcast %struct.mkuz_blk_info* %106 to i8*
  %110 = bitcast %struct.mkuz_blk_info* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 32, i1 false)
  store %struct.mkuz_blk_info* null, %struct.mkuz_blk_info** %3, align 8
  br label %111

111:                                              ; preds = %104, %86, %80, %79, %73
  %112 = load %struct.mkuz_blk_info*, %struct.mkuz_blk_info** %3, align 8
  ret %struct.mkuz_blk_info* %112
}

declare dso_local zeroext i8 @digest_fold(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @verify_match(i32, %struct.mkuz_blk*, %struct.mkuz_blkcache_itm*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.mkuz_blkcache_itm* @malloc(i32) #1

declare dso_local i32 @memset(%struct.mkuz_blkcache_itm*, i8 signext, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
