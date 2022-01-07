; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/make_index/extr_make_index.c_translateport.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/make_index/extr_make_index.c_translateport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__**, i64, %struct.TYPE_15__*)* @translateport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translateport(%struct.TYPE_15__** %0, i64 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_15__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %34, %3
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 10
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @findport(%struct.TYPE_15__** %15, i32 0, i64 %16, i32 %23, i32 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 10
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i8* %27, i8** %33, align 8
  br label %34

34:                                               ; preds = %14
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %8

37:                                               ; preds = %8
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %64, %37
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 9
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @findport(%struct.TYPE_15__** %45, i32 0, i64 %46, i32 %53, i32 %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 9
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i8* %57, i8** %63, align 8
  br label %64

64:                                               ; preds = %44
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  br label %38

67:                                               ; preds = %38
  store i64 0, i64* %7, align 8
  br label %68

68:                                               ; preds = %94, %67
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %68
  %75 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @findport(%struct.TYPE_15__** %75, i32 0, i64 %76, i32 %83, i32 %86)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  store i8* %87, i8** %93, align 8
  br label %94

94:                                               ; preds = %74
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %68

97:                                               ; preds = %68
  store i64 0, i64* %7, align 8
  br label %98

98:                                               ; preds = %124, %97
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %99, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %98
  %105 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %4, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 7
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @findport(%struct.TYPE_15__** %105, i32 0, i64 %106, i32 %113, i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  store i8* %117, i8** %123, align 8
  br label %124

124:                                              ; preds = %104
  %125 = load i64, i64* %7, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %7, align 8
  br label %98

127:                                              ; preds = %98
  store i64 0, i64* %7, align 8
  br label %128

128:                                              ; preds = %154, %127
  %129 = load i64, i64* %7, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ult i64 %129, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %128
  %135 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %4, align 8
  %136 = load i64, i64* %5, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = load i64, i64* %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @findport(%struct.TYPE_15__** %135, i32 0, i64 %136, i32 %143, i32 %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 6
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  store i8* %147, i8** %153, align 8
  br label %154

154:                                              ; preds = %134
  %155 = load i64, i64* %7, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %7, align 8
  br label %128

157:                                              ; preds = %128
  ret void
}

declare dso_local i8* @findport(%struct.TYPE_15__**, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
