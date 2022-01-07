; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_txsync_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_txsync_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.netmap_ring = type { i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"%s kcur %d ktail %d head %d cur %d tail %d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s tail overwritten was %d need %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nm_txsync_prologue(%struct.netmap_kring* %0, %struct.netmap_ring* %1) #0 {
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca %struct.netmap_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.netmap_kring* %0, %struct.netmap_kring** %3, align 8
  store %struct.netmap_ring* %1, %struct.netmap_ring** %4, align 8
  %8 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %9 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %12 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %15 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %18 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %21 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %24 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %27 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %30 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %33 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @nm_prdis(i32 5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34)
  %36 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %37 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %59, label %41

41:                                               ; preds = %2
  %42 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %43 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %49 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %55 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp sge i64 %56, %57
  br label %59

59:                                               ; preds = %53, %47, %41, %2
  %60 = phi i1 [ true, %47 ], [ true, %41 ], [ true, %2 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @NM_FAIL_ON(i32 %61)
  %63 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %64 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %67 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %59
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %73 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %79 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br label %82

82:                                               ; preds = %76, %70
  %83 = phi i1 [ true, %70 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @NM_FAIL_ON(i32 %84)
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %5, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %92 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br label %95

95:                                               ; preds = %89, %82
  %96 = phi i1 [ true, %82 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @NM_FAIL_ON(i32 %97)
  br label %149

99:                                               ; preds = %59
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %102 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %108 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %106, %109
  br label %111

111:                                              ; preds = %105, %99
  %112 = phi i1 [ false, %99 ], [ %110, %105 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @NM_FAIL_ON(i32 %113)
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %117 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp sle i64 %115, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %111
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %5, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %6, align 8
  %126 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %127 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %125, %128
  br label %130

130:                                              ; preds = %124, %120
  %131 = phi i1 [ true, %120 ], [ %129, %124 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @NM_FAIL_ON(i32 %132)
  br label %148

134:                                              ; preds = %111
  %135 = load i64, i64* %6, align 8
  %136 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %137 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %135, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* %5, align 8
  %143 = icmp slt i64 %141, %142
  br label %144

144:                                              ; preds = %140, %134
  %145 = phi i1 [ false, %134 ], [ %143, %140 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @NM_FAIL_ON(i32 %146)
  br label %148

148:                                              ; preds = %144, %130
  br label %149

149:                                              ; preds = %148, %95
  %150 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %151 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %154 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %149
  %158 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %159 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %162 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %165 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @nm_prlim(i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %160, i64 %163, i64 %166)
  %168 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %169 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %172 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %157, %149
  %174 = load i64, i64* %5, align 8
  %175 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %176 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %175, i32 0, i32 3
  store i64 %174, i64* %176, align 8
  %177 = load i64, i64* %6, align 8
  %178 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %179 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %178, i32 0, i32 5
  store i64 %177, i64* %179, align 8
  %180 = load i64, i64* %5, align 8
  ret i64 %180
}

declare dso_local i32 @nm_prdis(i32, i8*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @NM_FAIL_ON(i32) #1

declare dso_local i32 @nm_prlim(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
