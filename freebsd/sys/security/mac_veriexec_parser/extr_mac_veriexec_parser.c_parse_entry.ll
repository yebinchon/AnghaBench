; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_parse_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_parse_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.nameidata = type { i32 }
%struct.vattr = type { i32, i32, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_3__* null, align 8
@VEXEC = common dso_local global i32 0, align 4
@ve_mutex = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @parse_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_entry(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nameidata, align 4
  %7 = alloca %struct.vattr, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @get_fp(i8* %20, i8** %10, i8** %11, i32* %14)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

26:                                               ; preds = %2
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @hexstring_to_bin(i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @MAXPATHLEN, align 4
  %36 = call i32 @strnlen(i8* %34, i32 %35)
  %37 = load i32, i32* @MAXPATHLEN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

41:                                               ; preds = %33
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 47
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* @MAXPATHLEN, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @snprintf(i8* %19, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

60:                                               ; preds = %50
  br label %64

61:                                               ; preds = %44, %41
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strcpy(i8* %19, i8* %62)
  br label %64

64:                                               ; preds = %61, %60
  %65 = call i32 @open_file(i8* %19, %struct.nameidata* %6)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %67 = call i32 @NDFREE(%struct.nameidata* %6, i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @VOP_GETATTR(i32 %74, %struct.vattr* %7, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %102

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @VEXEC, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %13, align 4
  %87 = call i32 @mtx_lock(i32* @ve_mutex)
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @mac_veriexec_metadata_add_file(i32 %90, i32 %92, i32 %94, i32 %96, i8* %97, i32* null, i32 0, i32 %98, i8* %99, i32 1)
  store i32 %100, i32* %12, align 4
  %101 = call i32 @mtx_unlock(i32* @ve_mutex)
  br label %102

102:                                              ; preds = %82, %81
  %103 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @VOP_UNLOCK(i32 %104, i32 0)
  %106 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @FREAD, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %113 = call i32 @vn_close(i32 %107, i32 %108, i32 %111, %struct.TYPE_3__* %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

115:                                              ; preds = %102, %70, %57, %39, %31, %24
  %116 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_fp(i8*, i8**, i8**, i32*) #2

declare dso_local i32 @hexstring_to_bin(i8*) #2

declare dso_local i32 @strnlen(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @open_file(i8*, %struct.nameidata*) #2

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #2

declare dso_local i32 @VOP_GETATTR(i32, %struct.vattr*, i32) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @mac_veriexec_metadata_add_file(i32, i32, i32, i32, i8*, i32*, i32, i32, i8*, i32) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @VOP_UNLOCK(i32, i32) #2

declare dso_local i32 @vn_close(i32, i32, i32, %struct.TYPE_3__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
