; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mng_tlv.c_ecore_mfw_get_gen_tlv_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mng_tlv.c_ecore_mfw_get_gen_tlv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_drv_tlv_hdr = type { i32 }
%struct.ecore_mfw_tlv_generic = type { i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ecore_tlv_parsed_buf = type { i32*, i32* }

@ECORE_TLV_DATA_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_drv_tlv_hdr*, %struct.ecore_mfw_tlv_generic*, %struct.ecore_tlv_parsed_buf*)* @ecore_mfw_get_gen_tlv_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mfw_get_gen_tlv_value(%struct.ecore_drv_tlv_hdr* %0, %struct.ecore_mfw_tlv_generic* %1, %struct.ecore_tlv_parsed_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_drv_tlv_hdr*, align 8
  %6 = alloca %struct.ecore_mfw_tlv_generic*, align 8
  %7 = alloca %struct.ecore_tlv_parsed_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_drv_tlv_hdr* %0, %struct.ecore_drv_tlv_hdr** %5, align 8
  store %struct.ecore_mfw_tlv_generic* %1, %struct.ecore_mfw_tlv_generic** %6, align 8
  store %struct.ecore_tlv_parsed_buf* %2, %struct.ecore_tlv_parsed_buf** %7, align 8
  %9 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %126 [
    i32 133, label %12
    i32 132, label %58
    i32 135, label %58
    i32 134, label %58
    i32 130, label %82
    i32 131, label %93
    i32 128, label %104
    i32 129, label %115
  ]

12:                                               ; preds = %3
  %13 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %13, i32 0, i32 10
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %12
  %19 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %20 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @ECORE_TLV_DATA_MAX, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @OSAL_MEM_ZERO(i32* %21, i32 %25)
  %27 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %27, i32 0, i32 10
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %35 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %39 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = shl i32 %44, 1
  %46 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %47 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %53 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %56 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  store i32 2, i32* %4, align 4
  br label %128

57:                                               ; preds = %12
  br label %127

58:                                               ; preds = %3, %3, %3
  %59 = load %struct.ecore_drv_tlv_hdr*, %struct.ecore_drv_tlv_hdr** %5, align 8
  %60 = getelementptr inbounds %struct.ecore_drv_tlv_hdr, %struct.ecore_drv_tlv_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 132
  store i32 %62, i32* %8, align 4
  %63 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %64 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %63, i32 0, i32 9
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %58
  %72 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %73 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %80 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  store i32 6, i32* %4, align 4
  br label %128

81:                                               ; preds = %58
  br label %127

82:                                               ; preds = %3
  %83 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %84 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %89 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %88, i32 0, i32 7
  %90 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %91 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %90, i32 0, i32 1
  store i32* %89, i32** %91, align 8
  store i32 4, i32* %4, align 4
  br label %128

92:                                               ; preds = %82
  br label %127

93:                                               ; preds = %3
  %94 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %100 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %99, i32 0, i32 5
  %101 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %102 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %101, i32 0, i32 1
  store i32* %100, i32** %102, align 8
  store i32 4, i32* %4, align 4
  br label %128

103:                                              ; preds = %93
  br label %127

104:                                              ; preds = %3
  %105 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %106 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %111 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %110, i32 0, i32 3
  %112 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %113 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  store i32 4, i32* %4, align 4
  br label %128

114:                                              ; preds = %104
  br label %127

115:                                              ; preds = %3
  %116 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %117 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.ecore_mfw_tlv_generic*, %struct.ecore_mfw_tlv_generic** %6, align 8
  %122 = getelementptr inbounds %struct.ecore_mfw_tlv_generic, %struct.ecore_mfw_tlv_generic* %121, i32 0, i32 1
  %123 = load %struct.ecore_tlv_parsed_buf*, %struct.ecore_tlv_parsed_buf** %7, align 8
  %124 = getelementptr inbounds %struct.ecore_tlv_parsed_buf, %struct.ecore_tlv_parsed_buf* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  store i32 4, i32* %4, align 4
  br label %128

125:                                              ; preds = %115
  br label %127

126:                                              ; preds = %3
  br label %127

127:                                              ; preds = %126, %125, %114, %103, %92, %81, %57
  store i32 -1, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %120, %109, %98, %87, %71, %18
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @OSAL_MEM_ZERO(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
