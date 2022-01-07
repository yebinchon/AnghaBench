; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quotaon/extr_quotaon.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quotaon/extr_quotaon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"quotaoff\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"quotaon\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"name must be quotaon or quotaoff\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"avug\00", align 1
@aflag = common dso_local global i64 0, align 8
@gflag = common dso_local global i64 0, align 8
@uflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@FSTAB_RW = common dso_local global i8* null, align 8
@GRPQUOTA = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"%s not found in fstab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.fstab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = call i8* (...) @getprogname()
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %12, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %12, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %18
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %32, i32* %10, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %48 [
    i32 97, label %36
    i32 103, label %39
    i32 117, label %42
    i32 118, label %45
  ]

36:                                               ; preds = %34
  %37 = load i64, i64* @aflag, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* @aflag, align 8
  br label %50

39:                                               ; preds = %34
  %40 = load i64, i64* @gflag, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @gflag, align 8
  br label %50

42:                                               ; preds = %34
  %43 = load i64, i64* @uflag, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* @uflag, align 8
  br label %50

45:                                               ; preds = %34
  %46 = load i32, i32* @vflag, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @vflag, align 4
  br label %50

48:                                               ; preds = %34
  %49 = call i32 (...) @usage()
  br label %50

50:                                               ; preds = %48, %45, %42, %39, %36
  br label %29

51:                                               ; preds = %29
  %52 = load i64, i64* @optind, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  %57 = load i64, i64* @optind, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 %57
  store i8** %59, i8*** %5, align 8
  %60 = load i32, i32* %4, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i64, i64* @aflag, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 (...) @usage()
  br label %67

67:                                               ; preds = %65, %62, %51
  %68 = load i64, i64* @gflag, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* @uflag, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* @gflag, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* @gflag, align 8
  %76 = load i64, i64* @uflag, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* @uflag, align 8
  br label %78

78:                                               ; preds = %73, %70, %67
  %79 = call i32 (...) @setfsent()
  br label %80

80:                                               ; preds = %172, %124, %96, %78
  %81 = call %struct.fstab* (...) @getfsent()
  store %struct.fstab* %81, %struct.fstab** %6, align 8
  %82 = icmp ne %struct.fstab* %81, null
  br i1 %82, label %83, label %173

83:                                               ; preds = %80
  %84 = load %struct.fstab*, %struct.fstab** %6, align 8
  %85 = getelementptr inbounds %struct.fstab, %struct.fstab* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %83
  %90 = load %struct.fstab*, %struct.fstab** %6, align 8
  %91 = getelementptr inbounds %struct.fstab, %struct.fstab* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** @FSTAB_RW, align 8
  %94 = call i64 @strcmp(i8* %92, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89, %83
  br label %80

97:                                               ; preds = %89
  %98 = load i64, i64* @aflag, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %97
  %101 = load i64, i64* @gflag, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.fstab*, %struct.fstab** %6, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @GRPQUOTA, align 4
  %107 = call i64 @quotaonoff(%struct.fstab* %104, i32 %105, i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %103, %100
  %113 = load i64, i64* @uflag, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load %struct.fstab*, %struct.fstab** %6, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @USRQUOTA, align 4
  %119 = call i64 @quotaonoff(%struct.fstab* %116, i32 %117, i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %115, %112
  br label %80

125:                                              ; preds = %97
  %126 = load %struct.fstab*, %struct.fstab** %6, align 8
  %127 = getelementptr inbounds %struct.fstab, %struct.fstab* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i64 @oneof(i32 %128, i8** %129, i32 %130)
  store i64 %131, i64* %8, align 8
  %132 = icmp sge i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %125
  %134 = load %struct.fstab*, %struct.fstab** %6, align 8
  %135 = getelementptr inbounds %struct.fstab, %struct.fstab* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i8**, i8*** %5, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i64 @oneof(i32 %136, i8** %137, i32 %138)
  store i64 %139, i64* %8, align 8
  %140 = icmp sge i64 %139, 0
  br i1 %140, label %141, label %172

141:                                              ; preds = %133, %125
  %142 = load i64, i64* %8, align 8
  %143 = trunc i64 %142 to i32
  %144 = shl i32 1, %143
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %9, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %9, align 8
  %148 = load i64, i64* @gflag, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %141
  %151 = load %struct.fstab*, %struct.fstab** %6, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @GRPQUOTA, align 4
  %154 = call i64 @quotaonoff(%struct.fstab* %151, i32 %152, i32 %153)
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %13, align 4
  br label %159

159:                                              ; preds = %150, %141
  %160 = load i64, i64* @uflag, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load %struct.fstab*, %struct.fstab** %6, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @USRQUOTA, align 4
  %166 = call i64 @quotaonoff(%struct.fstab* %163, i32 %164, i32 %165)
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %162, %159
  br label %172

172:                                              ; preds = %171, %133
  br label %80

173:                                              ; preds = %80
  %174 = call i32 (...) @endfsent()
  store i32 0, i32* %11, align 4
  br label %175

175:                                              ; preds = %194, %173
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %4, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %197

179:                                              ; preds = %175
  %180 = load i64, i64* %9, align 8
  %181 = load i32, i32* %11, align 4
  %182 = shl i32 1, %181
  %183 = sext i32 %182 to i64
  %184 = and i64 %180, %183
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = load i8**, i8*** %5, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %191)
  br label %193

193:                                              ; preds = %186, %179
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %11, align 4
  br label %175

197:                                              ; preds = %175
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @exit(i32 %198) #3
  unreachable
}

declare dso_local i8* @getprogname(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @setfsent(...) #1

declare dso_local %struct.fstab* @getfsent(...) #1

declare dso_local i64 @quotaonoff(%struct.fstab*, i32, i32) #1

declare dso_local i64 @oneof(i32, i8**, i32) #1

declare dso_local i32 @endfsent(...) #1

declare dso_local i32 @warnx(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
