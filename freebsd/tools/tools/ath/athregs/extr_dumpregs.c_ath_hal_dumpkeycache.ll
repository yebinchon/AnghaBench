; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpkeycache.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpkeycache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ath_hal_dumpkeycache.keytypenames = internal global [8 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"WEP-40\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"WEP-104\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"#2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"WEP-128\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"AES-OCB\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"AES-CCM\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"CLR\00", align 1
@state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ah = common dso_local global i32 0, align 4
@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_CRPT_MIC_ENABLE = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@AR_KEYTABLE_VALID = common dso_local global i32 0, align 4
@AR_KEYTABLE_TYPE_TKIP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [95 x i8] c"KEY[%03u] MAC %s %-7s %02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"MIC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ath_hal_dumpkeycache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_hal_dumpkeycache(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0, i32 1), align 4
  %21 = call i64 @SREV(i32 %19, i32 %20)
  %22 = call i64 @SREV(i32 4, i32 8)
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @ah, align 4
  %27 = load i32, i32* @AR_STA_ID1, align 4
  %28 = call i32 @OS_REG_READ(i32 %26, i32 %27)
  %29 = load i32, i32* @AR_STA_ID1_CRPT_MIC_ENABLE, align 4
  %30 = and i32 %28, %29
  br label %31

31:                                               ; preds = %25, %24
  %32 = phi i32 [ 0, %24 ], [ %30, %25 ]
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %6, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %7, align 8
  %37 = load i32, i32* @NBBY, align 4
  %38 = sdiv i32 128, %37
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %8, align 8
  store i32 1, i32* %10, align 4
  %41 = mul nuw i64 4, %39
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32* %40, i32 0, i32 %42)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %202, %31
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %205

48:                                               ; preds = %44
  %49 = load i32, i32* @ah, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @AR_KEYTABLE_MAC1(i32 %50)
  %52 = call i32 @OS_REG_READ(i32 %49, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @AR_KEYTABLE_VALID, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @isclr(i32* %40, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %202

62:                                               ; preds = %57, %48
  %63 = load i32, i32* @ah, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @AR_KEYTABLE_MAC0(i32 %64)
  %66 = call i32 @OS_REG_READ(i32 %63, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 %67, 1
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, -2147483648
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %62
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = and i32 %78, 255
  %80 = getelementptr inbounds i32, i32* %36, i64 4
  store i32 %79, i32* %80, align 16
  %81 = load i32, i32* %12, align 4
  %82 = ashr i32 %81, 8
  %83 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %85, i32* %86, align 16
  %87 = load i32, i32* %11, align 4
  %88 = ashr i32 %87, 8
  %89 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %11, align 4
  %91 = ashr i32 %90, 16
  %92 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = ashr i32 %93, 24
  %95 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @ah, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @AR_KEYTABLE_TYPE(i32 %97)
  %99 = call i32 @OS_REG_READ(i32 %96, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = and i32 %100, 7
  %102 = load i32, i32* @AR_KEYTABLE_TYPE_TKIP, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %75
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 64
  %110 = call i32 @setbit(i32* %40, i32 %109)
  br label %111

111:                                              ; preds = %107, %104, %75
  %112 = load i32, i32* @ah, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @AR_KEYTABLE_KEY0(i32 %113)
  %115 = call i32 @OS_REG_READ(i32 %112, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* @ah, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @AR_KEYTABLE_KEY1(i32 %117)
  %119 = call i32 @OS_REG_READ(i32 %116, i32 %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* @ah, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @AR_KEYTABLE_KEY2(i32 %121)
  %123 = call i32 @OS_REG_READ(i32 %120, i32 %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* @ah, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @AR_KEYTABLE_KEY3(i32 %125)
  %127 = call i32 @OS_REG_READ(i32 %124, i32 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* @ah, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @AR_KEYTABLE_KEY4(i32 %129)
  %131 = call i32 @OS_REG_READ(i32 %128, i32 %130)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %111
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 (i32*, i8*, ...) @fprintf(i32* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %134, %111
  %138 = load i32*, i32** %3, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i8* @ether_sprintf(i32* %36)
  %141 = load i32, i32* %9, align 4
  %142 = call i64 @isset(i32* %40, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %151

145:                                              ; preds = %137
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %146, 7
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8 x i8*], [8 x i8*]* @ath_hal_dumpkeycache.keytypenames, i64 0, i64 %148
  %150 = load i8*, i8** %149, align 8
  br label %151

151:                                              ; preds = %145, %144
  %152 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %144 ], [ %150, %145 ]
  %153 = load i32, i32* %14, align 4
  %154 = ashr i32 %153, 0
  %155 = and i32 %154, 255
  %156 = load i32, i32* %14, align 4
  %157 = ashr i32 %156, 8
  %158 = and i32 %157, 255
  %159 = load i32, i32* %14, align 4
  %160 = ashr i32 %159, 16
  %161 = and i32 %160, 255
  %162 = load i32, i32* %14, align 4
  %163 = ashr i32 %162, 24
  %164 = and i32 %163, 255
  %165 = load i32, i32* %15, align 4
  %166 = ashr i32 %165, 0
  %167 = and i32 %166, 255
  %168 = load i32, i32* %15, align 4
  %169 = ashr i32 %168, 8
  %170 = and i32 %169, 255
  %171 = load i32, i32* %16, align 4
  %172 = ashr i32 %171, 0
  %173 = and i32 %172, 255
  %174 = load i32, i32* %16, align 4
  %175 = ashr i32 %174, 8
  %176 = and i32 %175, 255
  %177 = load i32, i32* %16, align 4
  %178 = ashr i32 %177, 16
  %179 = and i32 %178, 255
  %180 = load i32, i32* %16, align 4
  %181 = ashr i32 %180, 24
  %182 = and i32 %181, 255
  %183 = load i32, i32* %17, align 4
  %184 = ashr i32 %183, 0
  %185 = and i32 %184, 255
  %186 = load i32, i32* %17, align 4
  %187 = ashr i32 %186, 8
  %188 = and i32 %187, 255
  %189 = load i32, i32* %18, align 4
  %190 = ashr i32 %189, 0
  %191 = and i32 %190, 255
  %192 = load i32, i32* %18, align 4
  %193 = ashr i32 %192, 8
  %194 = and i32 %193, 255
  %195 = load i32, i32* %18, align 4
  %196 = ashr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = load i32, i32* %18, align 4
  %199 = ashr i32 %198, 24
  %200 = and i32 %199, 255
  %201 = call i32 (i32*, i8*, ...) @fprintf(i32* %138, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.9, i64 0, i64 0), i32 %139, i8* %140, i8* %152, i32 %155, i32 %158, i32 %161, i32 %164, i32 %167, i32 %170, i32 %173, i32 %176, i32 %179, i32 %182, i32 %185, i32 %188, i32 %191, i32 %194, i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %151, %61
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %44

205:                                              ; preds = %44
  %206 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %206)
  ret void
}

declare dso_local i64 @SREV(i32, i32) #1

declare dso_local i32 @OS_REG_READ(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @AR_KEYTABLE_MAC1(i32) #1

declare dso_local i64 @isclr(i32*, i32) #1

declare dso_local i32 @AR_KEYTABLE_MAC0(i32) #1

declare dso_local i32 @AR_KEYTABLE_TYPE(i32) #1

declare dso_local i32 @setbit(i32*, i32) #1

declare dso_local i32 @AR_KEYTABLE_KEY0(i32) #1

declare dso_local i32 @AR_KEYTABLE_KEY1(i32) #1

declare dso_local i32 @AR_KEYTABLE_KEY2(i32) #1

declare dso_local i32 @AR_KEYTABLE_KEY3(i32) #1

declare dso_local i32 @AR_KEYTABLE_KEY4(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @ether_sprintf(i32*) #1

declare dso_local i64 @isset(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
