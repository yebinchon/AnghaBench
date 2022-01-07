; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_rd_xgmac_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_rd_xgmac_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q81_XGMAC_REGISTER_END = common dso_local global i32 0, align 4
@Q81_BAD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @qls_rd_xgmac_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qls_rd_xgmac_regs(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %37, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @Q81_XGMAC_REGISTER_END, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %35 [
    i32 350, label %15
    i32 351, label %15
    i32 367, label %15
    i32 182, label %15
    i32 310, label %15
    i32 368, label %15
    i32 352, label %15
    i32 349, label %15
    i32 353, label %15
    i32 354, label %15
    i32 361, label %15
    i32 364, label %15
    i32 363, label %15
    i32 362, label %15
    i32 366, label %15
    i32 365, label %15
    i32 369, label %15
    i32 149, label %15
    i32 148, label %15
    i32 200, label %15
    i32 199, label %15
    i32 175, label %15
    i32 174, label %15
    i32 202, label %15
    i32 201, label %15
    i32 131, label %15
    i32 130, label %15
    i32 181, label %15
    i32 180, label %15
    i32 151, label %15
    i32 150, label %15
    i32 206, label %15
    i32 205, label %15
    i32 204, label %15
    i32 203, label %15
    i32 214, label %15
    i32 213, label %15
    i32 210, label %15
    i32 209, label %15
    i32 208, label %15
    i32 207, label %15
    i32 216, label %15
    i32 215, label %15
    i32 212, label %15
    i32 211, label %15
    i32 129, label %15
    i32 128, label %15
    i32 153, label %15
    i32 152, label %15
    i32 283, label %15
    i32 177, label %15
    i32 251, label %15
    i32 155, label %15
    i32 282, label %15
    i32 176, label %15
    i32 250, label %15
    i32 154, label %15
    i32 217, label %15
    i32 377, label %15
    i32 373, label %15
    i32 375, label %15
    i32 371, label %15
    i32 376, label %15
    i32 372, label %15
    i32 374, label %15
    i32 370, label %15
    i32 330, label %15
    i32 329, label %15
    i32 328, label %15
    i32 327, label %15
    i32 245, label %15
    i32 244, label %15
    i32 243, label %15
    i32 242, label %15
    i32 332, label %15
    i32 331, label %15
    i32 275, label %15
    i32 274, label %15
    i32 223, label %15
    i32 222, label %15
    i32 219, label %15
    i32 218, label %15
    i32 249, label %15
    i32 248, label %15
    i32 281, label %15
    i32 280, label %15
    i32 221, label %15
    i32 220, label %15
    i32 291, label %15
    i32 290, label %15
    i32 289, label %15
    i32 288, label %15
    i32 334, label %15
    i32 333, label %15
    i32 225, label %15
    i32 224, label %15
    i32 277, label %15
    i32 276, label %15
    i32 309, label %15
    i32 308, label %15
    i32 247, label %15
    i32 246, label %15
    i32 338, label %15
    i32 337, label %15
    i32 336, label %15
    i32 335, label %15
    i32 346, label %15
    i32 345, label %15
    i32 342, label %15
    i32 341, label %15
    i32 340, label %15
    i32 339, label %15
    i32 348, label %15
    i32 347, label %15
    i32 344, label %15
    i32 343, label %15
    i32 279, label %15
    i32 278, label %15
    i32 355, label %15
    i32 357, label %15
    i32 360, label %15
    i32 359, label %15
    i32 358, label %15
    i32 356, label %15
    i32 198, label %15
    i32 197, label %15
    i32 196, label %15
    i32 195, label %15
    i32 194, label %15
    i32 193, label %15
    i32 192, label %15
    i32 191, label %15
    i32 190, label %15
    i32 189, label %15
    i32 188, label %15
    i32 187, label %15
    i32 186, label %15
    i32 185, label %15
    i32 184, label %15
    i32 183, label %15
    i32 179, label %15
    i32 178, label %15
    i32 173, label %15
    i32 172, label %15
    i32 326, label %15
    i32 325, label %15
    i32 324, label %15
    i32 323, label %15
    i32 322, label %15
    i32 321, label %15
    i32 320, label %15
    i32 319, label %15
    i32 318, label %15
    i32 317, label %15
    i32 316, label %15
    i32 315, label %15
    i32 314, label %15
    i32 313, label %15
    i32 312, label %15
    i32 311, label %15
    i32 285, label %15
    i32 284, label %15
    i32 271, label %15
    i32 270, label %15
    i32 269, label %15
    i32 268, label %15
    i32 287, label %15
    i32 286, label %15
    i32 273, label %15
    i32 272, label %15
    i32 241, label %15
    i32 240, label %15
    i32 239, label %15
    i32 238, label %15
    i32 237, label %15
    i32 236, label %15
    i32 235, label %15
    i32 234, label %15
    i32 233, label %15
    i32 232, label %15
    i32 231, label %15
    i32 230, label %15
    i32 229, label %15
    i32 228, label %15
    i32 227, label %15
    i32 226, label %15
    i32 267, label %15
    i32 266, label %15
    i32 265, label %15
    i32 264, label %15
    i32 263, label %15
    i32 262, label %15
    i32 261, label %15
    i32 260, label %15
    i32 259, label %15
    i32 258, label %15
    i32 257, label %15
    i32 256, label %15
    i32 255, label %15
    i32 254, label %15
    i32 253, label %15
    i32 252, label %15
    i32 147, label %15
    i32 146, label %15
    i32 145, label %15
    i32 144, label %15
    i32 143, label %15
    i32 142, label %15
    i32 141, label %15
    i32 140, label %15
    i32 139, label %15
    i32 138, label %15
    i32 137, label %15
    i32 136, label %15
    i32 135, label %15
    i32 134, label %15
    i32 133, label %15
    i32 132, label %15
    i32 171, label %15
    i32 170, label %15
    i32 169, label %15
    i32 168, label %15
    i32 167, label %15
    i32 166, label %15
    i32 165, label %15
    i32 164, label %15
    i32 163, label %15
    i32 162, label %15
    i32 161, label %15
    i32 160, label %15
    i32 159, label %15
    i32 158, label %15
    i32 157, label %15
    i32 156, label %15
    i32 307, label %15
    i32 306, label %15
    i32 305, label %15
    i32 304, label %15
    i32 303, label %15
    i32 302, label %15
    i32 301, label %15
    i32 300, label %15
    i32 299, label %15
    i32 298, label %15
    i32 297, label %15
    i32 296, label %15
    i32 295, label %15
    i32 294, label %15
    i32 293, label %15
    i32 292, label %15
  ]

15:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @qls_rd_ofunc_xgmac_reg(i32* %19, i32 %20, i32* %21)
  store i32 %22, i32* %7, align 4
  br label %28

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @qls_rd_xgmac_reg(i32* %24, i32 %25, i32* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @Q81_BAD_DATA, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %36

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %5, align 8
  br label %9

42:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @qls_rd_ofunc_xgmac_reg(i32*, i32, i32*) #1

declare dso_local i32 @qls_rd_xgmac_reg(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
