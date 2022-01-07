; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_populate_phys_mem_pbls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_populate_phys_mem_pbls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.ib_phys_buf = type { i32, i32 }
%struct.qlnxr_pbl = type { i64 }
%struct.qlnxr_pbl_info = type { i32, i32, i64 }
%struct.regpair = type { i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"PBL_INFO not initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"pbl_info->num_pbes == 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"pbe is NULL\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"Populate pbl table: pbe->addr=0x%x:0x%x  pbe_cnt = %d total_num_pbes=%d pbe=%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.ib_phys_buf*, i32, %struct.qlnxr_pbl*, %struct.qlnxr_pbl_info*)* @qlnxr_populate_phys_mem_pbls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_populate_phys_mem_pbls(%struct.qlnxr_dev* %0, %struct.ib_phys_buf* %1, i32 %2, %struct.qlnxr_pbl* %3, %struct.qlnxr_pbl_info* %4) #0 {
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca %struct.ib_phys_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlnxr_pbl*, align 8
  %10 = alloca %struct.qlnxr_pbl_info*, align 8
  %11 = alloca %struct.regpair*, align 8
  %12 = alloca %struct.qlnxr_pbl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %6, align 8
  store %struct.ib_phys_buf* %1, %struct.ib_phys_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qlnxr_pbl* %3, %struct.qlnxr_pbl** %9, align 8
  store %struct.qlnxr_pbl_info* %4, %struct.qlnxr_pbl_info** %10, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %21 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %17, align 8
  %23 = load i32*, i32** %17, align 8
  %24 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %10, align 8
  %26 = icmp ne %struct.qlnxr_pbl_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32*, i32** %17, align 8
  %29 = call i32 @QL_DPRINT11(i32* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %142

30:                                               ; preds = %5
  %31 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %10, align 8
  %32 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %17, align 8
  %37 = call i32 @QL_DPRINT11(i32* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %142

38:                                               ; preds = %30
  %39 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %10, align 8
  %40 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %9, align 8
  %45 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %44, i64 1
  store %struct.qlnxr_pbl* %45, %struct.qlnxr_pbl** %12, align 8
  br label %48

46:                                               ; preds = %38
  %47 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %9, align 8
  store %struct.qlnxr_pbl* %47, %struct.qlnxr_pbl** %12, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %12, align 8
  %50 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.regpair*
  store %struct.regpair* %52, %struct.regpair** %11, align 8
  %53 = load %struct.regpair*, %struct.regpair** %11, align 8
  %54 = icmp ne %struct.regpair* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32*, i32** %17, align 8
  %57 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %142

58:                                               ; preds = %48
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %136, %58
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %139

63:                                               ; preds = %59
  %64 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %65 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %130, %63
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %133

73:                                               ; preds = %69
  %74 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %75 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load i32, i32* %13, align 4
  %79 = mul nsw i32 %77, %78
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.regpair*, %struct.regpair** %11, align 8
  %84 = getelementptr inbounds %struct.regpair, %struct.regpair* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %19, align 4
  %86 = ashr i32 %85, 32
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.regpair*, %struct.regpair** %11, align 8
  %89 = getelementptr inbounds %struct.regpair, %struct.regpair* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = load %struct.regpair*, %struct.regpair** %11, align 8
  %92 = getelementptr inbounds %struct.regpair, %struct.regpair* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.regpair*, %struct.regpair** %11, align 8
  %95 = getelementptr inbounds %struct.regpair, %struct.regpair* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.regpair*, %struct.regpair** %11, align 8
  %100 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %90, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i8* %93, i8* %96, i32 %97, i32 %98, %struct.regpair* %99)
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  %105 = load %struct.regpair*, %struct.regpair** %11, align 8
  %106 = getelementptr inbounds %struct.regpair, %struct.regpair* %105, i32 1
  store %struct.regpair* %106, %struct.regpair** %11, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %10, align 8
  %109 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %73
  br label %142

113:                                              ; preds = %73
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %10, align 8
  %117 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = udiv i64 %119, 4
  %121 = icmp eq i64 %115, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %113
  %123 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %12, align 8
  %124 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %123, i32 1
  store %struct.qlnxr_pbl* %124, %struct.qlnxr_pbl** %12, align 8
  %125 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %12, align 8
  %126 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.regpair*
  store %struct.regpair* %128, %struct.regpair** %11, align 8
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %122, %113
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %69

133:                                              ; preds = %69
  %134 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %135 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %134, i32 1
  store %struct.ib_phys_buf* %135, %struct.ib_phys_buf** %7, align 8
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %18, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %18, align 4
  br label %59

139:                                              ; preds = %59
  %140 = load i32*, i32** %17, align 8
  %141 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %112, %55, %35, %27
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
