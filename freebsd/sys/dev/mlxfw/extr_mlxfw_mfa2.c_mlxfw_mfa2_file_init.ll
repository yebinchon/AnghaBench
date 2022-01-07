; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_mfa2_file = type { i32, i32*, i8*, i8*, i32, i32, %struct.firmware* }
%struct.firmware = type { i64 }
%struct.mlxfw_mfa2_tlv_package_descriptor = type { i32, i32, i32, i32 }
%struct.mlxfw_mfa2_tlv_multi = type { i32 }
%struct.mlxfw_mfa2_tlv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxfw_mfa2_fingerprint_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not parse package descriptor TLV\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"First TLV is not of valid multi type\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"First device TLV is not valid\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Component block is out side the file\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Component block size is too big\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxfw_mfa2_file* @mlxfw_mfa2_file_init(%struct.firmware* %0) #0 {
  %2 = alloca %struct.mlxfw_mfa2_file*, align 8
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca %struct.mlxfw_mfa2_tlv_package_descriptor*, align 8
  %5 = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %6 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %7 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %8 = alloca %struct.mlxfw_mfa2_file*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlxfw_mfa2_file* @kcalloc(i32 1, i32 48, i32 %11)
  store %struct.mlxfw_mfa2_file* %12, %struct.mlxfw_mfa2_file** %8, align 8
  %13 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %14 = icmp ne %struct.mlxfw_mfa2_file* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.mlxfw_mfa2_file* @ERR_PTR(i32 %17)
  store %struct.mlxfw_mfa2_file* %18, %struct.mlxfw_mfa2_file** %2, align 8
  br label %152

19:                                               ; preds = %1
  %20 = load %struct.firmware*, %struct.firmware** %3, align 8
  %21 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %22 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %21, i32 0, i32 6
  store %struct.firmware* %20, %struct.firmware** %22, align 8
  %23 = load %struct.firmware*, %struct.firmware** %3, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* @mlxfw_mfa2_fingerprint_len, align 4
  %28 = call i32 @NLA_ALIGN(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32* %30, i32** %9, align 8
  %31 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file* %31, i32* %32)
  store %struct.mlxfw_mfa2_tlv* %33, %struct.mlxfw_mfa2_tlv** %7, align 8
  %34 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %7, align 8
  %35 = icmp ne %struct.mlxfw_mfa2_tlv* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %19
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %146

38:                                               ; preds = %19
  %39 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %40 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %7, align 8
  %41 = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %39, %struct.mlxfw_mfa2_tlv* %40)
  store %struct.mlxfw_mfa2_tlv_multi* %41, %struct.mlxfw_mfa2_tlv_multi** %5, align 8
  %42 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %5, align 8
  %43 = icmp ne %struct.mlxfw_mfa2_tlv_multi* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %146

46:                                               ; preds = %38
  %47 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %48 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %5, align 8
  %49 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %47, %struct.mlxfw_mfa2_tlv_multi* %48)
  store %struct.mlxfw_mfa2_tlv* %49, %struct.mlxfw_mfa2_tlv** %6, align 8
  %50 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %6, align 8
  %51 = icmp ne %struct.mlxfw_mfa2_tlv* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %146

53:                                               ; preds = %46
  %54 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %55 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %6, align 8
  %56 = call %struct.mlxfw_mfa2_tlv_package_descriptor* @mlxfw_mfa2_tlv_package_descriptor_get(%struct.mlxfw_mfa2_file* %54, %struct.mlxfw_mfa2_tlv* %55)
  store %struct.mlxfw_mfa2_tlv_package_descriptor* %56, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %57 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %58 = icmp ne %struct.mlxfw_mfa2_tlv_package_descriptor* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %146

61:                                               ; preds = %53
  %62 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %63 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %7, align 8
  %64 = call i32 @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %62, %struct.mlxfw_mfa2_tlv* %63)
  %65 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %66 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %68 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %61
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %146

73:                                               ; preds = %61
  %74 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %75 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @be16_to_cpu(i32 %76)
  %78 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %79 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %81 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %82 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %85 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @mlxfw_mfa2_tlv_advance(%struct.mlxfw_mfa2_file* %80, i32 %83, i8* %86)
  %88 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %89 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %91 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @be16_to_cpu(i32 %92)
  %94 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %95 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.firmware*, %struct.firmware** %3, align 8
  %97 = getelementptr inbounds %struct.firmware, %struct.firmware* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %101 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @be32_to_cpu(i32 %102)
  %104 = call i32 @NLA_ALIGN(i32 %103)
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %99, i64 %105
  %107 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %108 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  %109 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %110 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %111 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %109, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %73
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %146

117:                                              ; preds = %73
  %118 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %119 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @be32_to_cpu(i32 %120)
  %122 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %123 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %125 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %128 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = getelementptr inbounds i32, i32* %131, i64 -1
  store i32* %132, i32** %10, align 8
  %133 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %133, i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %117
  %138 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %146

139:                                              ; preds = %117
  %140 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %141 = call i32 @mlxfw_mfa2_file_validate(%struct.mlxfw_mfa2_file* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  br label %146

144:                                              ; preds = %139
  %145 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  store %struct.mlxfw_mfa2_file* %145, %struct.mlxfw_mfa2_file** %2, align 8
  br label %152

146:                                              ; preds = %143, %137, %115, %71, %59, %52, %44, %36
  %147 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %148 = call i32 @kfree(%struct.mlxfw_mfa2_file* %147)
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  %151 = call %struct.mlxfw_mfa2_file* @ERR_PTR(i32 %150)
  store %struct.mlxfw_mfa2_file* %151, %struct.mlxfw_mfa2_file** %2, align 8
  br label %152

152:                                              ; preds = %146, %144, %15
  %153 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %2, align 8
  ret %struct.mlxfw_mfa2_file* %153
}

declare dso_local %struct.mlxfw_mfa2_file* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.mlxfw_mfa2_file* @ERR_PTR(i32) #1

declare dso_local i32 @NLA_ALIGN(i32) #1

declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*) #1

declare dso_local %struct.mlxfw_mfa2_tlv_package_descriptor* @mlxfw_mfa2_tlv_package_descriptor_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local i32 @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @mlxfw_mfa2_tlv_advance(%struct.mlxfw_mfa2_file*, i32, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file*, i32*) #1

declare dso_local i32 @mlxfw_mfa2_file_validate(%struct.mlxfw_mfa2_file*) #1

declare dso_local i32 @kfree(%struct.mlxfw_mfa2_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
