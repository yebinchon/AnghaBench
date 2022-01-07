; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_alloc_ap_trampoline.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_alloc_ap_trampoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bootMP_size = common dso_local global i64 0, align 8
@boot_address = common dso_local global i64 0, align 8
@basemem = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"Cannot find enough space for the boot trampoline, placing it at %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_ap_trampoline(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %135, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ule i32 %10, %12
  br i1 %13, label %14, label %138

14:                                               ; preds = %9
  %15 = load i64*, i64** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @MiB(i32 1)
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %14
  %23 = load i64*, i64** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @trunc_page(i64 %28)
  %30 = load i64*, i64** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @round_page(i64 %34)
  %36 = sub nsw i64 %29, %35
  %37 = load i64, i64* @bootMP_size, align 8
  %38 = call i64 @round_page(i64 %37)
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22, %14
  br label %135

41:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  %42 = load i64*, i64** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @MiB(i32 1)
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %41
  %51 = load i64*, i64** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @trunc_page(i64 %56)
  store i64 %57, i64* @boot_address, align 8
  %58 = load i64*, i64** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @boot_address, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i64, i64* @bootMP_size, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %50
  %69 = load i64, i64* @bootMP_size, align 8
  %70 = call i64 @round_page(i64 %69)
  %71 = load i64, i64* @boot_address, align 8
  %72 = sub nsw i64 %71, %70
  store i64 %72, i64* @boot_address, align 8
  br label %73

73:                                               ; preds = %68, %50
  %74 = load i64, i64* @boot_address, align 8
  %75 = load i64*, i64** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64 %74, i64* %79, align 8
  br label %95

80:                                               ; preds = %41
  %81 = load i64*, i64** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @round_page(i64 %85)
  store i64 %86, i64* @boot_address, align 8
  %87 = load i64, i64* @boot_address, align 8
  %88 = load i64, i64* @bootMP_size, align 8
  %89 = call i64 @round_page(i64 %88)
  %90 = add nsw i64 %87, %89
  %91 = load i64*, i64** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 %90, i64* %94, align 8
  br label %95

95:                                               ; preds = %80, %73
  %96 = load i64*, i64** %3, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = add i32 %102, 1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %100, %106
  br i1 %107, label %108, label %134

108:                                              ; preds = %95
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = load i64*, i64** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64*, i64** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = add i32 %118, 2
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sub i32 %123, %124
  %126 = add i32 %125, 2
  %127 = zext i32 %126 to i64
  %128 = mul i64 8, %127
  %129 = trunc i64 %128 to i32
  %130 = call i32 @memmove(i64* %116, i64* %121, i32 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %131, align 4
  %133 = sub i32 %132, 2
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %112, %108, %95
  br label %138

135:                                              ; preds = %40
  %136 = load i32, i32* %5, align 4
  %137 = sub i32 %136, 2
  store i32 %137, i32* %5, align 4
  br label %9

138:                                              ; preds = %134, %9
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* @basemem, align 4
  %143 = mul nsw i32 %142, 1024
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* @bootMP_size, align 8
  %146 = sub nsw i64 %144, %145
  store i64 %146, i64* @boot_address, align 8
  %147 = load i64, i64* @bootverbose, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load i64, i64* @boot_address, align 8
  %151 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %149, %141
  br label %153

153:                                              ; preds = %152, %138
  ret void
}

declare dso_local i64 @MiB(i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
