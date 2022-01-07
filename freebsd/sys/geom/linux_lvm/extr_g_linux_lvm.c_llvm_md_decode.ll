; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_llvm_md_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_llvm_md_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_llvm_metadata = type { i32, i64, i64, i64, i64, i8* }
%struct.g_llvm_label = type { i64 }

@G_LLVM_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Incorrect md magic number\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Incorrect md version number (%u)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Incorrect md offset (%ju)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Only one reloc supported\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"reloc: offset=%ju, size=%ju\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"md: version=%u, start=%ju, size=%ju\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.g_llvm_metadata*, %struct.g_llvm_label*)* @llvm_md_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llvm_md_decode(i32* %0, %struct.g_llvm_metadata* %1, %struct.g_llvm_label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.g_llvm_metadata*, align 8
  %7 = alloca %struct.g_llvm_label*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  store i32* %0, i32** %5, align 8
  store %struct.g_llvm_metadata* %1, %struct.g_llvm_metadata** %6, align 8
  store %struct.g_llvm_label* %2, %struct.g_llvm_label** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i8* @le32dec(i32* %13)
  %15 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %16 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %24 = call i32 @bcopy(i32* %22, i8* %23, i32 16)
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 16
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i8* @le32dec(i32* %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %34 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i64 @le64dec(i32* %40)
  %42 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %43 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 8
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i64 @le64dec(i32* %49)
  %51 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %52 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 8
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @G_LLVM_MAGIC, align 4
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %57 = call i64 @bcmp(i32 %55, i8* %56, i32 16)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %3
  %60 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %4, align 4
  br label %133

62:                                               ; preds = %3
  %63 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %64 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %69 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %4, align 4
  br label %133

73:                                               ; preds = %62
  %74 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %75 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.g_llvm_label*, %struct.g_llvm_label** %7, align 8
  %78 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %83 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %4, align 4
  br label %133

87:                                               ; preds = %73
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i64 @le64dec(i32* %91)
  %93 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %94 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %93, i32 0, i32 4
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 8
  store i32 %96, i32* %8, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i64 @le64dec(i32* %100)
  %102 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %103 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 16
  store i32 %105, i32* %8, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i64 @le64dec(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %87
  %113 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %4, align 4
  br label %133

115:                                              ; preds = %87
  %116 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %117 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %120 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %118, i64 %121)
  %123 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %124 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %127 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.g_llvm_metadata*, %struct.g_llvm_metadata** %6, align 8
  %130 = getelementptr inbounds %struct.g_llvm_metadata, %struct.g_llvm_metadata* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %125, i64 %128, i64 %131)
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %115, %112, %81, %67, %59
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i8* @le32dec(i32*) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i64 @le64dec(i32*) #1

declare dso_local i64 @bcmp(i32, i8*, i32) #1

declare dso_local i32 @G_LLVM_DEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
