; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_dump_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_dump_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nm_dump_buf._dst = internal global [8192 x i8] zeroinitializer, align 16
@nm_dump_buf.hex = internal global [17 x i8] c"0123456789abcdef\00", align 16
@.str = private unnamed_addr constant [24 x i8] c"buf 0x%p len %d lim %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%5d: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nm_dump_buf(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @nm_dump_buf._dst, i64 0, i64 0), i8** %8, align 8
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29, i32 %30)
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = load i8*, i8** %12, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %148, %25
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %159

41:                                               ; preds = %37
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = load i8*, i8** %12, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @memset(i8* %50, i8 signext 32, i32 48)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %95, %41
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 16
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %62, label %100

62:                                               ; preds = %60
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = and i32 %68, 240
  %70 = ashr i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [17 x i8], [17 x i8]* @nm_dump_buf.hex, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8 %73, i8* %78, align 1
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = and i32 %84, 15
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [17 x i8], [17 x i8]* @nm_dump_buf.hex, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %10, align 4
  %91 = mul nsw i32 %90, 3
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  store i8 %88, i8* %94, align 1
  br label %95

95:                                               ; preds = %62
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %53

100:                                              ; preds = %60
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %143, %100
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br label %109

109:                                              ; preds = %105, %102
  %110 = phi i1 [ false, %102 ], [ %108, %105 ]
  br i1 %110, label %111, label %148

111:                                              ; preds = %109
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sge i32 %117, 32
  br i1 %118, label %119, label %134

119:                                              ; preds = %111
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sle i32 %125, 126
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  br label %135

134:                                              ; preds = %119, %111
  br label %135

135:                                              ; preds = %134, %127
  %136 = phi i32 [ %133, %127 ], [ 46, %134 ]
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 48
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 %137, i8* %142, align 1
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %102

148:                                              ; preds = %109
  %149 = load i8*, i8** %12, align 8
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 48
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  store i8 10, i8* %153, align 1
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 49
  %156 = load i8*, i8** %12, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %12, align 8
  br label %37

159:                                              ; preds = %37
  %160 = load i8*, i8** %12, align 8
  store i8 0, i8* %160, align 1
  %161 = load i8*, i8** %8, align 8
  ret i8* %161
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
