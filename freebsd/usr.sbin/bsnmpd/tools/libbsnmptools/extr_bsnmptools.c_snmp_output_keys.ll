; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64, i32*, i64, i32* }

@SNMP_AUTH_KEY_SIZ = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Localized keys for %s\0A\00", align 1
@snmp_client = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SNMP_AUTH_HMAC_MD5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"MD5 : 0x\00", align 1
@SNMP_AUTH_HMACMD5_KEY_SIZ = common dso_local global i64 0, align 8
@SNMP_AUTH_HMAC_SHA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"SHA : 0x\00", align 1
@SNMP_AUTH_HMACSHA_KEY_SIZ = common dso_local global i64 0, align 8
@SNMP_AUTH_NOAUTH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@SNMP_PRIV_DES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"DES : 0x\00", align 1
@SNMP_PRIV_DES_KEY_SIZ = common dso_local global i64 0, align 8
@SNMP_PRIV_AES = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"AES : 0x\00", align 1
@SNMP_PRIV_AES_KEY_SIZ = common dso_local global i64 0, align 8
@SNMP_PRIV_NOPRIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_output_keys() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %6 = load i32, i32* @SNMP_AUTH_KEY_SIZ, align 4
  %7 = mul nsw i32 2, %6
  %8 = add nsw i32 %7, 2
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @stdout, align 4
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 0), align 8
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 1), align 8
  %16 = load i64, i64* @SNMP_AUTH_HMAC_MD5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* @SNMP_AUTH_HMACMD5_KEY_SIZ, align 8
  store i64 %21, i64* %2, align 8
  br label %31

22:                                               ; preds = %0
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 1), align 8
  %24 = load i64, i64* @SNMP_AUTH_HMAC_SHA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i64, i64* @SNMP_AUTH_HMACSHA_KEY_SIZ, align 8
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 1), align 8
  %33 = load i64, i64* @SNMP_AUTH_NOAUTH, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  store i8* %11, i8** %3, align 8
  store i64 0, i64* %1, align 8
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* %2, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 2), align 8
  %43 = load i64, i64* %1, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i8*, i8** %3, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %3, align 8
  br label %50

50:                                               ; preds = %40
  %51 = load i64, i64* %1, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %1, align 8
  br label %36

53:                                               ; preds = %36
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %3, align 8
  store i8 0, i8* %54, align 1
  %56 = load i32, i32* @stdout, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %11)
  br label %58

58:                                               ; preds = %53, %31
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 3), align 8
  %60 = load i64, i64* @SNMP_PRIV_DES, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i64, i64* @SNMP_PRIV_DES_KEY_SIZ, align 8
  store i64 %65, i64* %2, align 8
  br label %75

66:                                               ; preds = %58
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 3), align 8
  %68 = load i64, i64* @SNMP_PRIV_AES, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @stdout, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i64, i64* @SNMP_PRIV_AES_KEY_SIZ, align 8
  store i64 %73, i64* %2, align 8
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 3), align 8
  %77 = load i64, i64* @SNMP_PRIV_NOPRIV, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  store i8* %11, i8** %3, align 8
  store i64 0, i64* %1, align 8
  br label %80

80:                                               ; preds = %94, %79
  %81 = load i64, i64* %1, align 8
  %82 = load i64, i64* %2, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i8*, i8** %3, align 8
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 4), align 8
  %87 = load i64, i64* %1, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %3, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %84
  %95 = load i64, i64* %1, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %1, align 8
  br label %80

97:                                               ; preds = %80
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %3, align 8
  store i8 0, i8* %98, align 1
  %100 = load i32, i32* @stdout, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %11)
  br label %102

102:                                              ; preds = %97, %75
  %103 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %103)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
