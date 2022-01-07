; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/quirk/extr_usb_quirk.c_usb_quirk_get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/quirk/extr_usb_quirk.c_usb_quirk_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_quirk_entry = type { i32, i32, i32, i32 }

@usb_quirk_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@usb_quirks = common dso_local global %struct.usb_quirk_entry* null, align 8
@USB_DEV_QUIRKS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_quirk_entry* (i32, i32, i32, i32, i64)* @usb_quirk_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_quirk_entry* @usb_quirk_get_entry(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.usb_quirk_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @USB_MTX_ASSERT(i32* @usb_quirk_mtx, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %10, align 4
  %21 = or i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %25 = load i32, i32* @USB_DEV_QUIRKS_MAX, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %24, i64 %26
  %28 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %27, i64 -1
  store %struct.usb_quirk_entry* %28, %struct.usb_quirk_entry** %6, align 8
  br label %151

29:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %76, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @USB_DEV_QUIRKS_MAX, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  %35 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %35, i64 %37
  %39 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %70, label %43

43:                                               ; preds = %34
  %44 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %44, i64 %46
  %48 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %70, label %52

52:                                               ; preds = %43
  %53 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %53, i64 %55
  %57 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %62, i64 %64
  %66 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61, %52, %43, %34
  br label %76

71:                                               ; preds = %61
  %72 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %72, i64 %74
  store %struct.usb_quirk_entry* %75, %struct.usb_quirk_entry** %6, align 8
  br label %151

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %30

79:                                               ; preds = %30
  %80 = load i64, i64* %11, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store %struct.usb_quirk_entry* null, %struct.usb_quirk_entry** %6, align 8
  br label %151

83:                                               ; preds = %79
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %147, %83
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @USB_DEV_QUIRKS_MAX, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %150

88:                                               ; preds = %84
  %89 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %89, i64 %91
  %93 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %95, i64 %97
  %99 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %94, %100
  %102 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %102, i64 %104
  %106 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %101, %107
  %109 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %109, i64 %111
  %113 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %108, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %88
  br label %147

118:                                              ; preds = %88
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %120, i64 %122
  %124 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %123, i32 0, i32 0
  store i32 %119, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %126, i64 %128
  %130 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %129, i32 0, i32 1
  store i32 %125, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %132, i64 %134
  %136 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %135, i32 0, i32 2
  store i32 %131, i32* %136, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %138, i64 %140
  %142 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %141, i32 0, i32 3
  store i32 %137, i32* %142, align 4
  %143 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** @usb_quirks, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %143, i64 %145
  store %struct.usb_quirk_entry* %146, %struct.usb_quirk_entry** %6, align 8
  br label %151

147:                                              ; preds = %117
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %84

150:                                              ; preds = %84
  store %struct.usb_quirk_entry* null, %struct.usb_quirk_entry** %6, align 8
  br label %151

151:                                              ; preds = %150, %118, %82, %71, %23
  %152 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** %6, align 8
  ret %struct.usb_quirk_entry* %152
}

declare dso_local i32 @USB_MTX_ASSERT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
