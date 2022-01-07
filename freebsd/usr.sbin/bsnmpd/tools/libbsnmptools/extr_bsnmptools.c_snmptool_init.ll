; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmptool_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmptool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.snmp_toolinfo = type { i32*, i32, i32, i32*, i64 }

@SNMP_PDU_GET = common dso_local global i32 0, align 4
@snmp_client = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SNMP_MAX_REPETITIONS = common dso_local global i32 0, align 4
@bsnmpd_defs = common dso_local global i8* null, align 8
@IsoOrgDod_OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error adding file %s to list\00", align 1
@mibII_defs = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"SNMPAUTH\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@SNMP_AUTH_HMAC_MD5 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"sha\00", align 1
@SNMP_AUTH_HMAC_SHA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Bad authentication type - %s in SNMPAUTH\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SNMPPRIV\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"des\00", align 1
@SNMP_PRIV_DES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@SNMP_PRIV_AES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Bad privacy type - %s in SNMPPRIV\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"SNMPUSER\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Username too long - %s in SNMPUSER\00", align 1
@SNMP_V3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"SNMPPASSWD\00", align 1
@MAXSTR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmptool_init(%struct.snmp_toolinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snmp_toolinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %3, align 8
  %6 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %7 = call i32 @memset(%struct.snmp_toolinfo* %6, i32 0, i32 32)
  %8 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %9 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %11 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %10, i32 0, i32 3
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @SNMP_PDU_GET, align 4
  %13 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %14 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %16 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %15, i32 0, i32 1
  %17 = call i32 @SLIST_INIT(i32* %16)
  %18 = call i32 @snmp_client_init(%struct.TYPE_5__* @snmp_client)
  %19 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %20 = load i32, i32* @SNMP_MAX_REPETITIONS, align 4
  %21 = call i32 @SET_MAXREP(%struct.snmp_toolinfo* %19, i32 %20)
  %22 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %23 = load i8*, i8** @bsnmpd_defs, align 8
  %24 = call i64 @add_filename(%struct.snmp_toolinfo* %22, i8* %23, i32* @IsoOrgDod_OID, i32 0)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i8*, i8** @bsnmpd_defs, align 8
  %28 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %31 = load i8*, i8** @mibII_defs, align 8
  %32 = call i64 @add_filename(%struct.snmp_toolinfo* %30, i8* %31, i32* @IsoOrgDod_OID, i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** @mibII_defs, align 8
  %36 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strlen(i8* %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @strcasecmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @SNMP_AUTH_HMAC_MD5, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1, i32 2), align 4
  br label %70

52:                                               ; preds = %46, %40
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @SNMP_AUTH_HMAC_SHA, align 4
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1, i32 2), align 4
  br label %69

62:                                               ; preds = %56, %52
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %60
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %37
  %72 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i8* %72, i8** %4, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %105

74:                                               ; preds = %71
  %75 = load i8*, i8** %4, align 8
  %76 = call i64 @strlen(i8* %75)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i8*, i8** %4, align 8
  %82 = call i64 @strcasecmp(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @SNMP_PRIV_DES, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1, i32 1), align 8
  br label %104

86:                                               ; preds = %80, %74
  %87 = load i64, i64* %5, align 8
  %88 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i8*, i8** %4, align 8
  %92 = call i64 @strcasecmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @SNMP_PRIV_AES, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1, i32 1), align 8
  br label %103

96:                                               ; preds = %90, %86
  %97 = load i64, i64* %5, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102, %94
  br label %104

104:                                              ; preds = %103, %84
  br label %105

105:                                              ; preds = %104, %71
  %106 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i8* %106, i8** %4, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = load i8*, i8** %4, align 8
  %110 = call i64 @strlen(i8* %109)
  store i64 %110, i64* %5, align 8
  %111 = icmp ugt i64 %110, 8
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i8*, i8** %4, align 8
  %114 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %113)
  store i32 -1, i32* %2, align 4
  br label %157

115:                                              ; preds = %108
  %116 = load i64, i64* %5, align 8
  %117 = icmp ugt i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1, i32 0), align 8
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @strlcpy(i32* %119, i8* %120, i64 8)
  %122 = load i32, i32* @SNMP_V3, align 4
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 0), align 8
  br label %123

123:                                              ; preds = %118, %115
  br label %124

124:                                              ; preds = %123, %105
  %125 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i8* %125, i8** %4, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %156

127:                                              ; preds = %124
  %128 = load i8*, i8** %4, align 8
  %129 = call i64 @strlen(i8* %128)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* @MAXSTR, align 8
  %131 = icmp ugt i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i64, i64* @MAXSTR, align 8
  %134 = sub i64 %133, 1
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i64, i64* %5, align 8
  %137 = add i64 %136, 1
  %138 = call i32* @malloc(i64 %137)
  %139 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %140 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %139, i32 0, i32 0
  store i32* %138, i32** %140, align 8
  %141 = icmp eq i32* %138, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %157

144:                                              ; preds = %135
  %145 = load i64, i64* %5, align 8
  %146 = icmp ugt i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %149 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = load i64, i64* %5, align 8
  %153 = add i64 %152, 1
  %154 = call i32 @strlcpy(i32* %150, i8* %151, i64 %153)
  br label %155

155:                                              ; preds = %147, %144
  br label %156

156:                                              ; preds = %155, %124
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %142, %112
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @memset(%struct.snmp_toolinfo*, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @snmp_client_init(%struct.TYPE_5__*) #1

declare dso_local i32 @SET_MAXREP(%struct.snmp_toolinfo*, i32) #1

declare dso_local i64 @add_filename(%struct.snmp_toolinfo*, i8*, i32*, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32*, i8*, i64) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
