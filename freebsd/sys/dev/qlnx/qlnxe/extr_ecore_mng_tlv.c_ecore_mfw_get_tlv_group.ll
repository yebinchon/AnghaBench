; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mng_tlv.c_ecore_mfw_get_tlv_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mng_tlv.c_ecore_mfw_get_tlv_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECORE_MFW_TLV_GENERIC = common dso_local global i32 0, align 4
@ECORE_MFW_TLV_ETH = common dso_local global i32 0, align 4
@ECORE_MFW_TLV_FCOE = common dso_local global i32 0, align 4
@ECORE_MFW_TLV_ISCSI = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ecore_mfw_get_tlv_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mfw_get_tlv_group(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %25 [
    i32 273, label %7
    i32 243, label %7
    i32 307, label %7
    i32 306, label %7
    i32 209, label %7
    i32 174, label %7
    i32 167, label %7
    i32 170, label %7
    i32 131, label %7
    i32 134, label %7
    i32 216, label %7
    i32 208, label %7
    i32 207, label %7
    i32 289, label %7
    i32 247, label %7
    i32 220, label %7
    i32 219, label %7
    i32 224, label %12
    i32 223, label %12
    i32 175, label %12
    i32 133, label %12
    i32 168, label %12
    i32 212, label %12
    i32 214, label %12
    i32 213, label %12
    i32 132, label %12
    i32 169, label %12
    i32 270, label %12
    i32 130, label %12
    i32 166, label %12
    i32 129, label %12
    i32 165, label %12
    i32 143, label %17
    i32 163, label %17
    i32 164, label %17
    i32 285, label %17
    i32 291, label %17
    i32 304, label %17
    i32 215, label %17
    i32 211, label %17
    i32 140, label %17
    i32 138, label %17
    i32 139, label %17
    i32 128, label %17
    i32 141, label %17
    i32 142, label %17
    i32 173, label %17
    i32 179, label %17
    i32 178, label %17
    i32 272, label %17
    i32 281, label %17
    i32 246, label %17
    i32 284, label %17
    i32 171, label %17
    i32 135, label %17
    i32 278, label %17
    i32 282, label %17
    i32 280, label %17
    i32 283, label %17
    i32 277, label %17
    i32 279, label %17
    i32 292, label %17
    i32 302, label %17
    i32 301, label %17
    i32 300, label %17
    i32 299, label %17
    i32 298, label %17
    i32 297, label %17
    i32 296, label %17
    i32 295, label %17
    i32 294, label %17
    i32 293, label %17
    i32 227, label %17
    i32 228, label %17
    i32 177, label %17
    i32 288, label %17
    i32 303, label %17
    i32 258, label %17
    i32 257, label %17
    i32 256, label %17
    i32 255, label %17
    i32 252, label %17
    i32 263, label %17
    i32 262, label %17
    i32 261, label %17
    i32 260, label %17
    i32 259, label %17
    i32 254, label %17
    i32 253, label %17
    i32 276, label %17
    i32 275, label %17
    i32 274, label %17
    i32 180, label %17
    i32 182, label %17
    i32 181, label %17
    i32 200, label %17
    i32 199, label %17
    i32 196, label %17
    i32 195, label %17
    i32 192, label %17
    i32 191, label %17
    i32 188, label %17
    i32 187, label %17
    i32 184, label %17
    i32 183, label %17
    i32 202, label %17
    i32 201, label %17
    i32 198, label %17
    i32 197, label %17
    i32 194, label %17
    i32 193, label %17
    i32 190, label %17
    i32 189, label %17
    i32 186, label %17
    i32 185, label %17
    i32 242, label %17
    i32 230, label %17
    i32 229, label %17
    i32 240, label %17
    i32 239, label %17
    i32 238, label %17
    i32 237, label %17
    i32 236, label %17
    i32 235, label %17
    i32 234, label %17
    i32 233, label %17
    i32 232, label %17
    i32 231, label %17
    i32 241, label %17
    i32 309, label %17
    i32 176, label %17
    i32 308, label %17
    i32 310, label %17
    i32 312, label %17
    i32 311, label %17
    i32 322, label %17
    i32 321, label %17
    i32 320, label %17
    i32 319, label %17
    i32 318, label %17
    i32 317, label %17
    i32 316, label %17
    i32 315, label %17
    i32 314, label %17
    i32 313, label %17
    i32 172, label %17
    i32 251, label %17
    i32 250, label %17
    i32 249, label %17
    i32 248, label %17
    i32 222, label %17
    i32 323, label %17
    i32 136, label %17
    i32 217, label %17
    i32 218, label %17
    i32 210, label %17
    i32 225, label %17
    i32 226, label %17
    i32 244, label %17
    i32 245, label %17
    i32 287, label %17
    i32 286, label %17
    i32 150, label %17
    i32 149, label %17
    i32 151, label %17
    i32 147, label %17
    i32 148, label %17
    i32 146, label %17
    i32 144, label %17
    i32 152, label %17
    i32 145, label %17
    i32 157, label %17
    i32 162, label %17
    i32 156, label %17
    i32 161, label %17
    i32 155, label %17
    i32 160, label %17
    i32 154, label %17
    i32 159, label %17
    i32 153, label %17
    i32 158, label %17
    i32 137, label %20
    i32 271, label %20
    i32 290, label %20
    i32 305, label %20
    i32 268, label %20
    i32 221, label %20
    i32 204, label %20
    i32 205, label %20
    i32 269, label %20
    i32 203, label %20
    i32 206, label %20
    i32 266, label %20
    i32 267, label %20
    i32 264, label %20
    i32 265, label %20
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %8 = load i32, i32* @ECORE_MFW_TLV_GENERIC, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %8
  store i32 %11, i32* %9, align 4
  br label %27

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %13 = load i32, i32* @ECORE_MFW_TLV_ETH, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  br label %27

17:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %18 = load i32, i32* @ECORE_MFW_TLV_FCOE, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %27

20:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %21 = load i32, i32* @ECORE_MFW_TLV_ISCSI, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %20, %17, %12, %7
  %28 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
