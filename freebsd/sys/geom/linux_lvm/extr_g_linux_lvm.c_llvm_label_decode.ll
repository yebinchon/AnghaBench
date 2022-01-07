; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_llvm_label_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_llvm_label_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_llvm_label = type { i32, i32, i8*, i64, i64, i8*, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"LABELONE\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"LVM2 001\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unsupported LVM format\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Expected sector %ju, found at %d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Only one data section supported\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"LVM metadata: offset=%ju, size=%ju\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Only one metadata section supported\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"label uuid=%s\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"sector=%ju, crc=%u, offset=%u, size=%ju, pestart=%ju\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.g_llvm_label*, i32)* @llvm_label_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llvm_label_decode(i32* %0, %struct.g_llvm_label* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.g_llvm_label*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.g_llvm_label* %1, %struct.g_llvm_label** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @bcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %11, i32 8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %190

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 24
  %19 = call i64 @bcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %190

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  %27 = call i64 @le64dec(i32* %26)
  %28 = trunc i64 %27 to i32
  %29 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %30 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 16
  %33 = call i8* @le32dec(i32* %32)
  %34 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %35 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 20
  %38 = call i8* @le32dec(i32* %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %41 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %43 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %24
  %48 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %49 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %4, align 4
  br label %190

54:                                               ; preds = %24
  %55 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %56 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %59 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %9, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @bcopy(i32* %64, i8* %65, i32 6)
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 6
  store i32 %68, i32* %8, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 6
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  store i8 45, i8* %71, align 1
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %89, %54
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 5
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @bcopy(i32* %80, i8* %81, i32 4)
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 4
  store i32 %84, i32* %8, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 4
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  store i8 45, i8* %87, align 1
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %73

92:                                               ; preds = %73
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @bcopy(i32* %96, i8* %97, i32 6)
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 6
  store i32 %100, i32* %8, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 6
  store i8* %102, i8** %9, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  store i8 0, i8* %103, align 1
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = call i64 @le64dec(i32* %108)
  %110 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %111 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 8
  store i32 %113, i32* %8, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i64 @le64dec(i32* %117)
  %119 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %120 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 16
  store i32 %122, i32* %8, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = call i64 @le64dec(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %92
  %130 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  store i32 %131, i32* %4, align 4
  br label %190

132:                                              ; preds = %92
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 16
  store i32 %134, i32* %8, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = call i64 @le64dec(i32* %138)
  %140 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %141 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %140, i32 0, i32 7
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 8
  store i32 %143, i32* %8, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = call i64 @le64dec(i32* %147)
  %149 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %150 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %149, i32 0, i32 6
  store i64 %148, i64* %150, align 8
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 8
  store i32 %152, i32* %8, align 4
  %153 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %154 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %153, i32 0, i32 7
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %157 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %155, i64 %158)
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = call i64 @le64dec(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %132
  %167 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  store i32 %168, i32* %4, align 4
  br label %190

169:                                              ; preds = %132
  %170 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %171 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %172)
  %174 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %175 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %178 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %177, i32 0, i32 5
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %181 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %184 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.g_llvm_label*, %struct.g_llvm_label** %6, align 8
  %187 = getelementptr inbounds %struct.g_llvm_label, %struct.g_llvm_label* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = call i32 (i32, i8*, ...) @G_LLVM_DEBUG(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %176, i8* %179, i32 %182, i64 %185, i64 %188)
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %169, %166, %129, %47, %21, %14
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i64 @bcmp(i8*, i32*, i32) #1

declare dso_local i32 @G_LLVM_DEBUG(i32, i8*, ...) #1

declare dso_local i64 @le64dec(i32*) #1

declare dso_local i8* @le32dec(i32*) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
