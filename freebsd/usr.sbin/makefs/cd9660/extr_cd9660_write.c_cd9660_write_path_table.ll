; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_write.c_cd9660_write_path_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_write.c_cd9660_write_path_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_11__*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32*, i8*, i32, i32, i32* }

@LITTLE_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32, i32)* @cd9660_write_path_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_write_path_table(%struct.TYPE_13__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CD9660_BLOCKS(i32 %18, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @ecalloc(i32 %23, i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %11, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %15, align 8
  br label %32

32:                                               ; preds = %130, %4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %34 = icmp ne %struct.TYPE_14__* %33, null
  br i1 %34, label %35, label %141

35:                                               ; preds = %32
  %36 = call i32 @memset(%struct.TYPE_12__* %14, i32 0, i32 32)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @memcpy(i8* %58, %struct.TYPE_12__* %63, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 1
  %80 = add nsw i32 %74, %79
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @LITTLE_ENDIAN, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %35
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cd9660_731(i32 %87, i32 %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = icmp eq %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %102

96:                                               ; preds = %84
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  br label %102

102:                                              ; preds = %96, %95
  %103 = phi i32 [ 1, %95 ], [ %101, %96 ]
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @cd9660_721(i32 %103, i32 %105)
  br label %130

107:                                              ; preds = %35
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @cd9660_732(i32 %110, i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = icmp eq %struct.TYPE_11__* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %125

119:                                              ; preds = %107
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  br label %125

125:                                              ; preds = %119, %118
  %126 = phi i32 [ 1, %118 ], [ %124, %119 ]
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @cd9660_722(i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %125, %102
  %131 = load i8*, i8** %10, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @memcpy(i8* %131, %struct.TYPE_12__* %14, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %10, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  store %struct.TYPE_14__* %140, %struct.TYPE_14__** %15, align 8
  br label %32

141:                                              ; preds = %32
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i8*, i8** %11, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @cd9660_write_filedata(%struct.TYPE_13__* %142, i32* %143, i32 %144, i8* %145, i32 %146)
  store i32 %147, i32* %13, align 4
  %148 = load i8*, i8** %11, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i32, i32* %13, align 4
  ret i32 %150
}

declare dso_local i32 @CD9660_BLOCKS(i32, i32) #1

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @cd9660_731(i32, i32) #1

declare dso_local i32 @cd9660_721(i32, i32) #1

declare dso_local i32 @cd9660_732(i32, i32) #1

declare dso_local i32 @cd9660_722(i32, i32) #1

declare dso_local i32 @cd9660_write_filedata(%struct.TYPE_13__*, i32*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
