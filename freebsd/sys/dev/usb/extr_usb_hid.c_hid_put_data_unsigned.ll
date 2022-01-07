; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_put_data_unsigned.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_put_data_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_location = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"hid_put_data: loc %d/%d = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_put_data_unsigned(i32* %0, i32 %1, %struct.hid_location* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_location*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hid_location* %2, %struct.hid_location** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.hid_location*, %struct.hid_location** %7, align 8
  %16 = getelementptr inbounds %struct.hid_location, %struct.hid_location* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.hid_location*, %struct.hid_location** %7, align 8
  %19 = getelementptr inbounds %struct.hid_location, %struct.hid_location* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %87

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 32
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 32, i32* %10, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %9, align 4
  %34 = sdiv i32 %33, 8
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 7
  %37 = sdiv i32 %36, 8
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = srem i32 %39, 8
  %41 = shl i32 %38, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = sub i64 %44, 1
  %46 = load i32, i32* %9, align 4
  %47 = srem i32 %46, 8
  %48 = zext i32 %47 to i64
  %49 = shl i64 %45, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %86, %32
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %14, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 8, %66
  %68 = ashr i32 %65, %67
  %69 = xor i32 %68, -1
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %69
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %14, align 4
  %78 = mul nsw i32 8, %77
  %79 = ashr i32 %76, %78
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %79
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %64, %58
  br label %54

87:                                               ; preds = %27, %54
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
