; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_dump_payload.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_dump_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"ring %p cur %5d [buf %6d flags 0x%04x len %5d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%5d: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.netmap_ring*, i32)* @dump_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_payload(i8* %0, i32 %1, %struct.netmap_ring* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netmap_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netmap_ring* %2, %struct.netmap_ring** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %13, align 8
  %15 = load %struct.netmap_ring*, %struct.netmap_ring** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.netmap_ring*, %struct.netmap_ring** %7, align 8
  %18 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.netmap_ring*, %struct.netmap_ring** %7, align 8
  %26 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.netmap_ring* %15, i32 %16, i32 %24, i32 %32, i32 %33)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %118, %4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %121

39:                                               ; preds = %35
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i8 signext 32, i32 128)
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %43 = load i32, i32* %10, align 4
  %44 = trunc i32 %43 to i8
  %45 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %71, %39
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 16
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %76

56:                                               ; preds = %54
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %58 = getelementptr inbounds i8, i8* %57, i64 7
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8*, i8** %13, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = trunc i32 %68 to i8
  %70 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %69)
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %47

76:                                               ; preds = %54
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %113, %76
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i1 [ false, %78 ], [ %84, %81 ]
  br i1 %86, label %87, label %118

87:                                               ; preds = %85
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %89 = getelementptr inbounds i8, i8* %88, i64 7
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = getelementptr inbounds i8, i8* %92, i64 48
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @isprint(i8 zeroext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %87
  %102 = load i8*, i8** %13, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  br label %109

108:                                              ; preds = %87
  br label %109

109:                                              ; preds = %108, %101
  %110 = phi i32 [ %107, %101 ], [ 46, %108 ]
  %111 = trunc i32 %110 to i8
  %112 = call i32 @sprintf(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %111)
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %78

118:                                              ; preds = %85
  %119 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  br label %35

121:                                              ; preds = %35
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

declare dso_local i64 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
