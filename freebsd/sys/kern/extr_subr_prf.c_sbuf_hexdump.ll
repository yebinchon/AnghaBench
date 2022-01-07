; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_prf.c_sbuf_hexdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_prf.c_sbuf_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@HD_DELIM_MASK = common dso_local global i32 0, align 4
@HD_COLUMN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HD_OMIT_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%04x  \00", align 1
@HD_OMIT_HEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%c%02x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@HD_OMIT_CHARS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"  |\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbuf_hexdump(%struct.sbuf* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @HD_DELIM_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @HD_DELIM_MASK, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 8
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %16, align 1
  br label %28

27:                                               ; preds = %5
  store i8 32, i8* %16, align 1
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @HD_COLUMN_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @HD_COLUMN_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %14, align 4
  br label %38

37:                                               ; preds = %28
  store i32 16, i32* %14, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %15, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %157, %38
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %161

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @HD_OMIT_COUNT, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @HD_OMIT_HEX, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %92, %65
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %79 = load i8, i8* %16, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8*, i8** %15, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %86)
  br label %91

88:                                               ; preds = %70
  %89 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %90 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %77
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %66

95:                                               ; preds = %66
  br label %96

96:                                               ; preds = %95, %60
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @HD_OMIT_CHARS, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %154

101:                                              ; preds = %96
  %102 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %103 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %148, %101
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %151

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %117 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %147

118:                                              ; preds = %108
  %119 = load i8*, i8** %15, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp sge i32 %124, 32
  br i1 %125, label %126, label %143

126:                                              ; preds = %118
  %127 = load i8*, i8** %15, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp sle i32 %132, 126
  br i1 %133, label %134, label %143

134:                                              ; preds = %126
  %135 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  br label %146

143:                                              ; preds = %126, %118
  %144 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %145 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %134
  br label %147

147:                                              ; preds = %146, %115
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %104

151:                                              ; preds = %104
  %152 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %153 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %96
  %155 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %156 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %40

161:                                              ; preds = %40
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
