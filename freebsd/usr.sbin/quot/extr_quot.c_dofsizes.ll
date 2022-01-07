; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_dofsizes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_dofsizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsizes = type { i32*, i32, i32, i64*, %struct.fsizes* }
%struct.fs = type { i32, i32 }
%union.dinode = type { i32 }

@errno = common dso_local global i64 0, align 8
@estimate = common dso_local global i64 0, align 8
@fsizes = common dso_local global %struct.fsizes* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"allocate fsize structure\00", align 1
@FSZCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%jd\09%jd\09%d\0A\00", align 1
@IFDIR = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@IFREG = common dso_local global i32 0, align 4
@di_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fs*, i8*)* @dofsizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dofsizes(i32 %0, %struct.fs* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.dinode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fsizes*, align 8
  %13 = alloca %struct.fsizes**, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fs* %1, %struct.fs** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.fs*, %struct.fs** %5, align 8
  %16 = getelementptr inbounds %struct.fs, %struct.fs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fs*, %struct.fs** %5, align 8
  %19 = getelementptr inbounds %struct.fs, %struct.fs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %151, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %154

27:                                               ; preds = %23
  store i64 0, i64* @errno, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.fs*, %struct.fs** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %union.dinode* @get_inode(i32 %28, %struct.fs* %29, i32 %30)
  store %union.dinode* %31, %union.dinode** %9, align 8
  %32 = icmp ne %union.dinode* %31, null
  br i1 %32, label %33, label %143

33:                                               ; preds = %27
  %34 = load %struct.fs*, %struct.fs** %5, align 8
  %35 = load %union.dinode*, %union.dinode** %9, align 8
  %36 = call i32 @isfree(%struct.fs* %34, %union.dinode* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %143, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* @estimate, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.fs*, %struct.fs** %5, align 8
  %43 = load %union.dinode*, %union.dinode** %9, align 8
  %44 = call i32 @virtualblocks(%struct.fs* %42, %union.dinode* %43)
  br label %49

45:                                               ; preds = %38
  %46 = load %struct.fs*, %struct.fs** %5, align 8
  %47 = load %union.dinode*, %union.dinode** %9, align 8
  %48 = call i32 @actualblocks(%struct.fs* %46, %union.dinode* %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %44, %41 ], [ %48, %45 ]
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @SIZE(i32 %51)
  store i32 %52, i32* %11, align 4
  store %struct.fsizes** @fsizes, %struct.fsizes*** %13, align 8
  br label %53

53:                                               ; preds = %65, %49
  %54 = load %struct.fsizes**, %struct.fsizes*** %13, align 8
  %55 = load %struct.fsizes*, %struct.fsizes** %54, align 8
  store %struct.fsizes* %55, %struct.fsizes** %12, align 8
  %56 = icmp ne %struct.fsizes* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %60 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %68

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %67 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %66, i32 0, i32 4
  store %struct.fsizes** %67, %struct.fsizes*** %13, align 8
  br label %53

68:                                               ; preds = %63, %53
  %69 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %70 = icmp ne %struct.fsizes* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %74 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %121

77:                                               ; preds = %71, %68
  %78 = call i64 @malloc(i32 32)
  %79 = inttoptr i64 %78 to %struct.fsizes*
  store %struct.fsizes* %79, %struct.fsizes** %12, align 8
  %80 = icmp ne %struct.fsizes* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  %84 = load %struct.fsizes**, %struct.fsizes*** %13, align 8
  %85 = load %struct.fsizes*, %struct.fsizes** %84, align 8
  %86 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %87 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %86, i32 0, i32 4
  store %struct.fsizes* %85, %struct.fsizes** %87, align 8
  %88 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %89 = load %struct.fsizes**, %struct.fsizes*** %13, align 8
  store %struct.fsizes* %88, %struct.fsizes** %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @FSZCNT, align 4
  %92 = call i32 @rounddown(i32 %90, i32 %91)
  %93 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %94 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %96 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @FSZCNT, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %101 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @FSZCNT, align 4
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %107, %83
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %14, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %109 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %108, i32 0, i32 3
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  store i64 0, i64* %113, align 8
  %114 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %115 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 0, i32* %119, align 4
  br label %103

120:                                              ; preds = %103
  br label %121

121:                                              ; preds = %120, %71
  %122 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %123 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %122, i32 0, i32 3
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @FSZCNT, align 4
  %127 = srem i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %124, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %134 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @FSZCNT, align 4
  %138 = srem i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %132
  store i32 %142, i32* %140, align 4
  br label %150

143:                                              ; preds = %33, %27
  %144 = load i64, i64* @errno, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %121
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %23

154:                                              ; preds = %23
  store i32 0, i32* %10, align 4
  %155 = load %struct.fsizes*, %struct.fsizes** @fsizes, align 8
  store %struct.fsizes* %155, %struct.fsizes** %12, align 8
  br label %156

156:                                              ; preds = %203, %154
  %157 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %158 = icmp ne %struct.fsizes* %157, null
  br i1 %158, label %159, label %207

159:                                              ; preds = %156
  store i32 0, i32* %14, align 4
  br label %160

160:                                              ; preds = %199, %159
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @FSZCNT, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %202

164:                                              ; preds = %160
  %165 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %166 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %165, i32 0, i32 3
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %198

173:                                              ; preds = %164
  %174 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %175 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %176, %177
  %179 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %180 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %179, i32 0, i32 3
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %188 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %10, align 4
  %196 = call i32 @SIZE(i32 %195)
  %197 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %178, i32 %186, i32 %196)
  br label %198

198:                                              ; preds = %173, %164
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %160

202:                                              ; preds = %160
  br label %203

203:                                              ; preds = %202
  %204 = load %struct.fsizes*, %struct.fsizes** %12, align 8
  %205 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %204, i32 0, i32 4
  %206 = load %struct.fsizes*, %struct.fsizes** %205, align 8
  store %struct.fsizes* %206, %struct.fsizes** %12, align 8
  br label %156

207:                                              ; preds = %156
  ret void
}

declare dso_local %union.dinode* @get_inode(i32, %struct.fs*, i32) #1

declare dso_local i32 @isfree(%struct.fs*, %union.dinode*) #1

declare dso_local i32 @virtualblocks(%struct.fs*, %union.dinode*) #1

declare dso_local i32 @actualblocks(%struct.fs*, %union.dinode*) #1

declare dso_local i32 @SIZE(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
