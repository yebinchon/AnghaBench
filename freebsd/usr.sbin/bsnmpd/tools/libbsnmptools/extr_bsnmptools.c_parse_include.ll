; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_parse_include.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_parse_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32 }
%struct.snmp_toolinfo = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cut\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@__const.parse_include.subopts = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Suboption 'cut' requires an argument\00", align 1
@IsoOrgDod_OID = common dso_local global %struct.asn_oid zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Unknown suboption - '%s'\00", align 1
@suboptarg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_include(%struct.snmp_toolinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.asn_oid, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [4 x i8*], align 16
  %15 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = bitcast [4 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x i8*]* @__const.parse_include.subopts to i8*), i64 32, i1 false)
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %26, align 16
  %27 = call i32 @memset(%struct.asn_oid* %11, i32 0, i32 4)
  store i32 -1, i32* %8, align 4
  br label %28

28:                                               ; preds = %80, %2
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %30 = call i32 @getsubopt1(i8** %5, i8** %29, i8** %12, i8** %13)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @EOF, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %81

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %77 [
    i32 0, label %35
    i32 1, label %47
    i32 2, label %57
  ]

35:                                               ; preds = %33
  %36 = load i8*, i8** %12, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %82

40:                                               ; preds = %35
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @snmp_parse_numoid(i8* %41, %struct.asn_oid* %11)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %82

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  store i32 1, i32* %8, align 4
  br label %80

47:                                               ; preds = %33
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @parse_path(i8* %48)
  store i32 %49, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %82

52:                                               ; preds = %47
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @strlcpy(i8* %20, i8* %53, i32 %55)
  br label %80

57:                                               ; preds = %33
  %58 = load i8*, i8** %12, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %82

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @parse_flist(%struct.snmp_toolinfo* %65, i8* %66, i8* %20, %struct.asn_oid* @IsoOrgDod_OID)
  store i32 %67, i32* %9, align 4
  br label %72

68:                                               ; preds = %61
  %69 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @parse_flist(%struct.snmp_toolinfo* %69, i8* %70, i8* %20, %struct.asn_oid* %11)
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %82

76:                                               ; preds = %72
  br label %80

77:                                               ; preds = %33
  %78 = load i32, i32* @suboptarg, align 4
  %79 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %82

80:                                               ; preds = %76, %52, %46
  br label %28

81:                                               ; preds = %28
  store i32 2, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %82

82:                                               ; preds = %81, %77, %75, %60, %51, %44, %38
  %83 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #3

declare dso_local i32 @memset(%struct.asn_oid*, i32, i32) #3

declare dso_local i32 @getsubopt1(i8**, i8**, i8**, i8**) #3

declare dso_local i32 @warnx(i8*, ...) #3

declare dso_local i32 @snmp_parse_numoid(i8*, %struct.asn_oid*) #3

declare dso_local i32 @parse_path(i8*) #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #3

declare dso_local i32 @parse_flist(%struct.snmp_toolinfo*, i8*, i8*, %struct.asn_oid*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
