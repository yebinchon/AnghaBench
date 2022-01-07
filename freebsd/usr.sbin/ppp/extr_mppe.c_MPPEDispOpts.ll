; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPEDispOpts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPEDispOpts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm_opt = type { i32 }

@MPPEDispOpts.buf = internal global [70 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [14 x i8] c"value 0x%08x \00", align 1
@MPPE_OPT_BITMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"(0\00", align 1
@MPPE_OPT_128BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%c128\00", align 1
@MPPE_OPT_56BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%c56\00", align 1
@MPPE_OPT_40BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%c40\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" bits, state%s\00", align 1
@MPPE_OPT_STATELESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"less\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ful\00", align 1
@MPPE_OPT_COMPRESSED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c", compressed\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fsm_opt*)* @MPPEDispOpts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @MPPEDispOpts(%struct.fsm_opt* %0) #0 {
  %2 = alloca %struct.fsm_opt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsm_opt* %0, %struct.fsm_opt** %2, align 8
  %7 = load %struct.fsm_opt*, %struct.fsm_opt** %2, align 8
  %8 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ua_ntohl(i32 %9, i32* %3)
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @MPPEDispOpts.buf, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MPPE_OPT_BITMASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @MPPEDispOpts.buf, i64 0, i64 0), i64 %25
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 70, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %23
  br label %105

38:                                               ; preds = %18
  store i8 40, i8* %4, align 1
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MPPE_OPT_128BIT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @MPPEDispOpts.buf, i64 0, i64 0), i64 %45
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 70, %48
  %50 = trunc i64 %49 to i32
  %51 = load i8, i8* %4, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %43
  store i8 47, i8* %4, align 1
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @MPPE_OPT_56BIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @MPPEDispOpts.buf, i64 0, i64 0), i64 %67
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 70, %70
  %72 = trunc i64 %71 to i32
  %73 = load i8, i8* %4, align 1
  %74 = sext i8 %73 to i32
  %75 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %65
  store i8 47, i8* %4, align 1
  br label %82

82:                                               ; preds = %81, %60
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @MPPE_OPT_40BIT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @MPPEDispOpts.buf, i64 0, i64 0), i64 %89
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 70, %92
  %94 = trunc i64 %93 to i32
  %95 = load i8, i8* %4, align 1
  %96 = sext i8 %95 to i32
  %97 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %87
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %87
  store i8 47, i8* %4, align 1
  br label %104

104:                                              ; preds = %103, %82
  br label %105

105:                                              ; preds = %104, %37
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @MPPEDispOpts.buf, i64 0, i64 0), i64 %107
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 70, %110
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @MPPE_OPT_STATELESS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %119 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %108, i32 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  store i32 %119, i32* %6, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %105
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %121, %105
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @MPPE_OPT_COMPRESSED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @MPPEDispOpts.buf, i64 0, i64 0), i64 %132
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = sub i64 70, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %133, i32 %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32 %138, i32* %6, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %130
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %130
  br label %145

145:                                              ; preds = %144, %125
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @MPPEDispOpts.buf, i64 0, i64 0), i64 %147
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = sub i64 70, %150
  %152 = trunc i64 %151 to i32
  %153 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %148, i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret i8* getelementptr inbounds ([70 x i8], [70 x i8]* @MPPEDispOpts.buf, i64 0, i64 0)
}

declare dso_local i32 @ua_ntohl(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
