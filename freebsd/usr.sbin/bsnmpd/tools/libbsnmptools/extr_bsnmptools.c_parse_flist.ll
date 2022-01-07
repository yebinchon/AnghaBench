; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_parse_flist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_parse_flist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.asn_oid = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@SNMP_DEFS_DIR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unexpected character %#2x in filename\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Illegal character '%c' in filename\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Filename %s too long\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Error adding file %s to list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, i8*, i8*, %struct.asn_oid*)* @parse_flist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_flist(%struct.snmp_toolinfo* %0, i8* %1, i8* %2, %struct.asn_oid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_toolinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.asn_oid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.asn_oid* %3, %struct.asn_oid** %9, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %148

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %142, %22
  %24 = load i32, i32* @MAXPATHLEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @memset(i8* %18, i32 0, i32 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isalpha(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34, %31
  %41 = load i8*, i8** @SNMP_DEFS_DIR, align 8
  %42 = load i32, i32* @MAXPATHLEN, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @strlcpy(i8* %18, i8* %41, i32 %43)
  %45 = load i8*, i8** @SNMP_DEFS_DIR, align 8
  %46 = call i32 @strlen(i8* %45)
  store i32 %46, i32* %10, align 4
  br label %59

47:                                               ; preds = %34, %23
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @MAXPATHLEN, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @strlcpy(i8* %18, i8* %51, i32 %53)
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strlen(i8* %55)
  store i32 %56, i32* %10, align 4
  br label %58

57:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %50
  br label %59

59:                                               ; preds = %58, %40
  br label %60

60:                                               ; preds = %118, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @MAXPATHLEN, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %121

64:                                               ; preds = %60
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @isvalid_fchar(i8 signext %66, i32 %67)
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %18, i64 %75
  store i8 %72, i8* %76, align 1
  br label %118

77:                                               ; preds = %64
  %78 = load i8*, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 44
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  br label %114

85:                                               ; preds = %77
  %86 = load i8*, i8** %7, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %113

91:                                               ; preds = %85
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @isascii(i8 signext %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @isprint(i8 signext %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %96, %91
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %105)
  br label %112

107:                                              ; preds = %96
  %108 = load i8*, i8** %7, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %101
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %148

113:                                              ; preds = %90
  br label %114

114:                                              ; preds = %113, %82
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %18, i64 %116
  store i8 0, i8* %117, align 1
  br label %121

118:                                              ; preds = %70
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %7, align 8
  br label %60

121:                                              ; preds = %114, %60
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @MAXPATHLEN, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i32, i32* @MAXPATHLEN, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %18, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %148

134:                                              ; preds = %125, %121
  %135 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %6, align 8
  %136 = load %struct.asn_oid*, %struct.asn_oid** %9, align 8
  %137 = call i64 @add_filename(%struct.snmp_toolinfo* %135, i8* %18, %struct.asn_oid* %136, i32 0)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %148

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141
  %143 = load i8*, i8** %7, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %23, label %147

147:                                              ; preds = %142
  store i32 1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %148

148:                                              ; preds = %147, %139, %132, %112, %21
  %149 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @isalpha(i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @isvalid_fchar(i8 signext, i32) #2

declare dso_local i32 @isascii(i8 signext) #2

declare dso_local i32 @isprint(i8 signext) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i64 @add_filename(%struct.snmp_toolinfo*, i8*, %struct.asn_oid*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
