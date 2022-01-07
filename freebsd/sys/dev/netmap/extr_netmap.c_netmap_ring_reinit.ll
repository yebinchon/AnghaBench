; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_ring_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_ring_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_6__*, %struct.netmap_ring* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.netmap_ring = type { i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"called for %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"bad index at slot %d idx %d len %d \00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"bad len at slot %d idx %d len %d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"total %d errors\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s reinit, cur %d -> %d tail %d -> %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_ring_reinit(%struct.netmap_kring* %0) #0 {
  %2 = alloca %struct.netmap_kring*, align 8
  %3 = alloca %struct.netmap_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.netmap_kring* %0, %struct.netmap_kring** %2, align 8
  %9 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %10 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %9, i32 0, i32 8
  %11 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  store %struct.netmap_ring* %11, %struct.netmap_ring** %3, align 8
  %12 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %13 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %17 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = call i32 (i32, i8*, i64, ...) @nm_prlim(i32 10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %22 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %25 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %27 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %30 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %32 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %35 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %37 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %1
  %45 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %46 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %55 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %53
  store i64 0, i64* %4, align 8
  br label %63

63:                                               ; preds = %130, %62
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %133

67:                                               ; preds = %63
  %68 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %69 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %68, i32 0, i32 3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %7, align 8
  %75 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %76 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp slt i64 %82, 2
  br i1 %83, label %93, label %84

84:                                               ; preds = %67
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %87 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %86, i32 0, i32 7
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %85, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %84, %67
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 (i32, i8*, i64, ...) @nm_prlim(i32 5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %94, i64 %95, i64 %96)
  %98 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %99 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %98, i32 0, i32 3
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i64, i64* %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %105 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %104, i32 0, i32 3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i64, i64* %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  br label %129

110:                                              ; preds = %84
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %113 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %112, i32 0, i32 7
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = call i64 @NETMAP_BUF_SIZE(%struct.TYPE_6__* %114)
  %116 = icmp sgt i64 %111, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %119 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %118, i32 0, i32 3
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i64, i64* %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 (i32, i8*, i64, ...) @nm_prlim(i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %124, i64 %125, i64 %126)
  br label %128

128:                                              ; preds = %117, %110
  br label %129

129:                                              ; preds = %128, %93
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %4, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %4, align 8
  br label %63

133:                                              ; preds = %63
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %178

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = call i32 (i32, i8*, i64, ...) @nm_prlim(i32 10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %138)
  %140 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %141 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %145 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %148 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %151 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %154 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (i32, i8*, i64, ...) @nm_prlim(i32 10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %143, i64 %146, i64 %149, i64 %152, i64 %155)
  %157 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %158 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %161 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %163 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %162, i32 0, i32 0
  store i64 %159, i64* %163, align 8
  %164 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %165 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %168 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  %169 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %170 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %169, i32 0, i32 1
  store i64 %166, i64* %170, align 8
  %171 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %172 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.netmap_kring*, %struct.netmap_kring** %2, align 8
  %175 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %174, i32 0, i32 3
  store i64 %173, i64* %175, align 8
  %176 = load %struct.netmap_ring*, %struct.netmap_ring** %3, align 8
  %177 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %176, i32 0, i32 2
  store i64 %173, i64* %177, align 8
  br label %178

178:                                              ; preds = %136, %133
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 1, i32 0
  ret i32 %182
}

declare dso_local i32 @nm_prlim(i32, i8*, i64, ...) #1

declare dso_local i64 @NETMAP_BUF_SIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
