; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_rxsync_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_rxsync_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.netmap_ring = type { i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"%s kc %d kt %d h %d c %d t %d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s tail overwritten was %d need %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nm_rxsync_prologue(%struct.netmap_kring* %0, %struct.netmap_ring* %1) #0 {
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca %struct.netmap_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.netmap_kring* %0, %struct.netmap_kring** %3, align 8
  store %struct.netmap_ring* %1, %struct.netmap_ring** %4, align 8
  %8 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %9 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %12 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %15 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %18 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %21 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %24 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %27 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @nm_prdis(i32 5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16, i64 %19, i64 %22, i64 %25, i64 %28)
  %30 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %31 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %34 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  store i64 %32, i64* %7, align 8
  %35 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %36 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %39 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %38, i32 0, i32 4
  store i64 %37, i64* %39, align 8
  store i64 %37, i64* %6, align 8
  %40 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %41 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %2
  %46 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %47 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp sge i64 %48, %49
  br label %51

51:                                               ; preds = %45, %2
  %52 = phi i1 [ true, %2 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @NM_FAIL_ON(i32 %53)
  %55 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %56 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %59 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %51
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %65 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %71 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i1 [ true, %62 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @NM_FAIL_ON(i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %84 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  br label %87

87:                                               ; preds = %81, %74
  %88 = phi i1 [ true, %74 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @NM_FAIL_ON(i32 %89)
  br label %141

91:                                               ; preds = %51
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %94 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %92, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %100 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br label %103

103:                                              ; preds = %97, %91
  %104 = phi i1 [ false, %91 ], [ %102, %97 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @NM_FAIL_ON(i32 %105)
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %109 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp sle i64 %107, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %103
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %7, align 8
  %118 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %119 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %117, %120
  br label %122

122:                                              ; preds = %116, %112
  %123 = phi i1 [ true, %112 ], [ %121, %116 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @NM_FAIL_ON(i32 %124)
  br label %140

126:                                              ; preds = %103
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* %6, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %133 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %131, %134
  br label %136

136:                                              ; preds = %130, %126
  %137 = phi i1 [ false, %126 ], [ %135, %130 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @NM_FAIL_ON(i32 %138)
  br label %140

140:                                              ; preds = %136, %122
  br label %141

141:                                              ; preds = %140, %87
  %142 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %143 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %146 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %141
  %150 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %151 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %154 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %157 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @nm_prlim(i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %152, i64 %155, i64 %158)
  %160 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %161 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.netmap_ring*, %struct.netmap_ring** %4, align 8
  %164 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %149, %141
  %166 = load i64, i64* %6, align 8
  ret i64 %166
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
