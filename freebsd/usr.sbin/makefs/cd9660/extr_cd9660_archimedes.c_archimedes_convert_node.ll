; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_archimedes.c_archimedes_convert_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_archimedes.c_archimedes_convert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ISO_ARCHIMEDES = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"ARCHIMEDES\00", align 1
@RO_ACCESS_UR = common dso_local global i32 0, align 4
@RO_ACCESS_OR = common dso_local global i32 0, align 4
@CDFS_PLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @archimedes_convert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @archimedes_convert_node(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.ISO_ARCHIMEDES*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 -1, i32* %5, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %127

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %127

22:                                               ; preds = %12
  %23 = load i64, i64* %4, align 8
  %24 = icmp uge i64 %23, 4
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = sub i64 %31, 4
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 44
  br i1 %36, label %37, label %47

37:                                               ; preds = %25
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 -3
  %46 = call i32 @strtoul(i8* %45, i32* null, i32 16)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %37, %25, %22
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 33
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %127

61:                                               ; preds = %50, %47
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = call i32 @assert(i32 0)
  %67 = call %struct.ISO_ARCHIMEDES* @ecalloc(i32 1, i32 20)
  store %struct.ISO_ARCHIMEDES* %67, %struct.ISO_ARCHIMEDES** %3, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @riscos_date(i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.ISO_ARCHIMEDES*, %struct.ISO_ARCHIMEDES** %3, align 8
  %78 = getelementptr inbounds %struct.ISO_ARCHIMEDES, %struct.ISO_ARCHIMEDES* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @memcpy(i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %81 = load i32, i32* %5, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 -1048576, %82
  %84 = load i32, i32* %6, align 4
  %85 = ashr i32 %84, 32
  %86 = or i32 %83, %85
  %87 = load %struct.ISO_ARCHIMEDES*, %struct.ISO_ARCHIMEDES** %3, align 8
  %88 = getelementptr inbounds %struct.ISO_ARCHIMEDES, %struct.ISO_ARCHIMEDES* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cd9660_731(i32 %86, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = and i64 %92, 4294967295
  %94 = trunc i64 %93 to i32
  %95 = load %struct.ISO_ARCHIMEDES*, %struct.ISO_ARCHIMEDES** %3, align 8
  %96 = getelementptr inbounds %struct.ISO_ARCHIMEDES, %struct.ISO_ARCHIMEDES* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @cd9660_731(i32 %94, i32 %97)
  %99 = load i32, i32* @RO_ACCESS_UR, align 4
  %100 = load i32, i32* @RO_ACCESS_OR, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.ISO_ARCHIMEDES*, %struct.ISO_ARCHIMEDES** %3, align 8
  %103 = getelementptr inbounds %struct.ISO_ARCHIMEDES, %struct.ISO_ARCHIMEDES* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 33
  br i1 %112, label %113, label %115

113:                                              ; preds = %65
  %114 = load i32, i32* @CDFS_PLING, align 4
  br label %116

115:                                              ; preds = %65
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ]
  %118 = load %struct.ISO_ARCHIMEDES*, %struct.ISO_ARCHIMEDES** %3, align 8
  %119 = getelementptr inbounds %struct.ISO_ARCHIMEDES, %struct.ISO_ARCHIMEDES* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.ISO_ARCHIMEDES*, %struct.ISO_ARCHIMEDES** %3, align 8
  %121 = bitcast %struct.ISO_ARCHIMEDES* %120 to i8*
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  store i32 20, i32* %126, align 8
  br label %127

127:                                              ; preds = %116, %60, %21, %11
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.ISO_ARCHIMEDES* @ecalloc(i32, i32) #1

declare dso_local i32 @riscos_date(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cd9660_731(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
