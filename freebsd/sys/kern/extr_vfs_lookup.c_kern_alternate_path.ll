; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_kern_alternate_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_lookup.c_kern_alternate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nameidata = type { i64 }

@MAXPATHLEN = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_alternate_path(%struct.thread* %0, i8* %1, i8* %2, i32 %3, i8** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nameidata, align 8
  %17 = alloca %struct.nameidata, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %24 = load i64, i64* @MAXPATHLEN, align 8
  %25 = load i32, i32* @M_TEMP, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = call i64 @malloc(i64 %24, i32 %25, i32 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %19, align 8
  %29 = load i8*, i8** %19, align 8
  %30 = load i8**, i8*** %13, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %19, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* @MAXPATHLEN, align 8
  %34 = call i64 @strlcpy(i8* %31, i8* %32, i64 %33)
  store i64 %34, i64* %21, align 8
  %35 = load i64, i64* %21, align 8
  %36 = load i64, i64* @MAXPATHLEN, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %7
  %39 = load i8**, i8*** %13, align 8
  store i8* null, i8** %39, align 8
  %40 = load i8*, i8** %19, align 8
  %41 = load i32, i32* @M_TEMP, align 4
  %42 = call i32 @free(i8* %40, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %8, align 4
  br label %172

44:                                               ; preds = %7
  %45 = load i64, i64* @MAXPATHLEN, align 8
  %46 = load i64, i64* %21, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %22, align 8
  %48 = load i8*, i8** %19, align 8
  %49 = load i64, i64* %21, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %18, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @UIO_SYSSPACE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load i64, i64* %22, align 8
  %58 = call i32 @copystr(i8* %55, i8* %56, i64 %57, i64* %21)
  store i32 %58, i32* %23, align 4
  br label %64

59:                                               ; preds = %44
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = load i64, i64* %22, align 8
  %63 = call i32 @copyinstr(i8* %60, i8* %61, i64 %62, i64* %21)
  store i32 %63, i32* %23, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %23, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i8**, i8*** %13, align 8
  store i8* null, i8** %68, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = load i32, i32* @M_TEMP, align 4
  %71 = call i32 @free(i8* %69, i32 %70)
  %72 = load i32, i32* %23, align 4
  store i32 %72, i32* %8, align 4
  br label %172

73:                                               ; preds = %64
  %74 = load i8*, i8** %18, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 47
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %23, align 4
  br label %162

80:                                               ; preds = %73
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @AT_FDCWD, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i8*, i8** %18, align 8
  %86 = load i8*, i8** %19, align 8
  %87 = load i64, i64* %21, align 8
  %88 = call i32 @bcopy(i8* %85, i8* %86, i64 %87)
  store i32 0, i32* %8, align 4
  br label %172

89:                                               ; preds = %80
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %89
  %93 = load i8*, i8** %18, align 8
  %94 = load i64, i64* %21, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = getelementptr inbounds i8, i8* %95, i64 -1
  store i8* %96, i8** %20, align 8
  br label %97

97:                                               ; preds = %103, %92
  %98 = load i8*, i8** %20, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 47
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %20, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %105, i8** %20, align 8
  br label %97

106:                                              ; preds = %97
  %107 = load i8*, i8** %20, align 8
  store i8 0, i8* %107, align 1
  %108 = load i32, i32* @LOOKUP, align 4
  %109 = load i32, i32* @NOFOLLOW, align 4
  %110 = load i32, i32* @UIO_SYSSPACE, align 4
  %111 = load i8*, i8** %19, align 8
  %112 = load %struct.thread*, %struct.thread** %9, align 8
  %113 = call i32 @NDINIT(%struct.nameidata* %16, i32 %108, i32 %109, i32 %110, i8* %111, %struct.thread* %112)
  %114 = call i32 @namei(%struct.nameidata* %16)
  store i32 %114, i32* %23, align 4
  %115 = load i8*, i8** %20, align 8
  store i8 47, i8* %115, align 1
  %116 = load i32, i32* %23, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %162

119:                                              ; preds = %106
  br label %156

120:                                              ; preds = %89
  %121 = load i32, i32* @LOOKUP, align 4
  %122 = load i32, i32* @NOFOLLOW, align 4
  %123 = load i32, i32* @UIO_SYSSPACE, align 4
  %124 = load i8*, i8** %19, align 8
  %125 = load %struct.thread*, %struct.thread** %9, align 8
  %126 = call i32 @NDINIT(%struct.nameidata* %16, i32 %121, i32 %122, i32 %123, i8* %124, %struct.thread* %125)
  %127 = call i32 @namei(%struct.nameidata* %16)
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %23, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %162

131:                                              ; preds = %120
  %132 = load i32, i32* @LOOKUP, align 4
  %133 = load i32, i32* @FOLLOW, align 4
  %134 = load i32, i32* @UIO_SYSSPACE, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = load %struct.thread*, %struct.thread** %9, align 8
  %137 = call i32 @NDINIT(%struct.nameidata* %17, i32 %132, i32 %133, i32 %134, i8* %135, %struct.thread* %136)
  %138 = call i32 @namei(%struct.nameidata* %17)
  store i32 %138, i32* %23, align 4
  %139 = load i32, i32* %23, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @ENOENT, align 4
  store i32 %148, i32* %23, align 4
  br label %149

149:                                              ; preds = %147, %141
  %150 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %151 = call i32 @NDFREE(%struct.nameidata* %17, i32 %150)
  %152 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @vrele(i64 %153)
  br label %155

155:                                              ; preds = %149, %131
  br label %156

156:                                              ; preds = %155, %119
  %157 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %158 = call i32 @NDFREE(%struct.nameidata* %16, i32 %157)
  %159 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @vrele(i64 %160)
  br label %162

162:                                              ; preds = %156, %130, %118, %78
  %163 = load i32, i32* %23, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i8*, i8** %18, align 8
  %167 = load i8*, i8** %19, align 8
  %168 = load i64, i64* %21, align 8
  %169 = call i32 @bcopy(i8* %166, i8* %167, i64 %168)
  br label %170

170:                                              ; preds = %165, %162
  %171 = load i32, i32* %23, align 4
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %170, %84, %67, %38
  %173 = load i32, i32* %8, align 4
  ret i32 %173
}

declare dso_local i64 @malloc(i64, i32, i32) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @copystr(i8*, i8*, i64, i64*) #1

declare dso_local i32 @copyinstr(i8*, i8*, i64, i64*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vrele(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
