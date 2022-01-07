; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_dateandtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_dateandtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@SNMP_DATETIME_OCTETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@SNMP_SYNTAX_OCTETSTRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Date value %s not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i8*)* @parse_dateandtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dateandtime(%struct.snmp_value* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @SNMP_DATETIME_OCTETS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strtoul(i8* %15, i8** %6, i32 10)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 65535
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 45
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %2
  br label %201

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 65280
  %28 = ashr i32 %27, 8
  %29 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strtoul(i8* %35, i8** %6, i32 10)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 12
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %39, %25
  br label %201

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 %49, i32* %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strtoul(i8* %53, i8** %6, i32 10)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %58, 31
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 44
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %57, %48
  br label %201

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 %67, i32* %68, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %5, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strtoul(i8* %71, i8** %6, i32 10)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %73, 23
  br i1 %74, label %80, label %75

75:                                               ; preds = %66
  %76 = load i8*, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 58
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %66
  br label %201

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = getelementptr inbounds i32, i32* %14, i64 4
  store i32 %82, i32* %83, align 16
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @strtoul(i8* %86, i8** %6, i32 10)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %88, 59
  br i1 %89, label %95, label %90

90:                                               ; preds = %81
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 58
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %81
  br label %201

96:                                               ; preds = %90
  %97 = load i32, i32* %7, align 4
  %98 = getelementptr inbounds i32, i32* %14, i64 5
  store i32 %97, i32* %98, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %100, i8** %5, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @strtoul(i8* %101, i8** %6, i32 10)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp sgt i32 %103, 60
  br i1 %104, label %110, label %105

105:                                              ; preds = %96
  %106 = load i8*, i8** %6, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 46
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %96
  br label %201

111:                                              ; preds = %105
  %112 = load i32, i32* %7, align 4
  %113 = getelementptr inbounds i32, i32* %14, i64 6
  store i32 %112, i32* %113, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8* %115, i8** %5, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @strtoul(i8* %116, i8** %6, i32 10)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp sgt i32 %118, 9
  br i1 %119, label %125, label %120

120:                                              ; preds = %111
  %121 = load i8*, i8** %6, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 44
  br i1 %124, label %125, label %126

125:                                              ; preds = %120, %111
  br label %201

126:                                              ; preds = %120
  %127 = load i32, i32* %7, align 4
  %128 = getelementptr inbounds i32, i32* %14, i64 7
  store i32 %127, i32* %128, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8* %130, i8** %5, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 45
  br i1 %134, label %135, label %141

135:                                              ; preds = %126
  %136 = load i8*, i8** %5, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 43
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %201

141:                                              ; preds = %135, %126
  %142 = load i8*, i8** %5, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = getelementptr inbounds i32, i32* %14, i64 8
  store i32 %144, i32* %145, align 16
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  store i8* %147, i8** %5, align 8
  %148 = load i8*, i8** %5, align 8
  %149 = call i32 @strtoul(i8* %148, i8** %6, i32 10)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp sgt i32 %150, 13
  br i1 %151, label %157, label %152

152:                                              ; preds = %141
  %153 = load i8*, i8** %6, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 58
  br i1 %156, label %157, label %158

157:                                              ; preds = %152, %141
  br label %201

158:                                              ; preds = %152
  %159 = load i32, i32* %7, align 4
  %160 = getelementptr inbounds i32, i32* %14, i64 9
  store i32 %159, i32* %160, align 4
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  store i8* %162, i8** %5, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 @strtoul(i8* %163, i8** %6, i32 10)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp sgt i32 %165, 59
  br i1 %166, label %172, label %167

167:                                              ; preds = %158
  %168 = load i8*, i8** %6, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167, %158
  br label %201

173:                                              ; preds = %167
  %174 = load i32, i32* %7, align 4
  %175 = getelementptr inbounds i32, i32* %14, i64 10
  store i32 %174, i32* %175, align 8
  %176 = load i32, i32* @SNMP_DATETIME_OCTETS, align 4
  %177 = call i32* @malloc(i32 %176)
  %178 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %179 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  store i32* %177, i32** %181, align 8
  %182 = icmp eq i32* %177, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %204

185:                                              ; preds = %173
  %186 = load i32, i32* @SNMP_DATETIME_OCTETS, align 4
  %187 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %188 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  store i32 %186, i32* %190, align 8
  %191 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %192 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @SNMP_DATETIME_OCTETS, align 4
  %197 = call i32 @memcpy(i32* %195, i32* %14, i32 %196)
  %198 = load i32, i32* @SNMP_SYNTAX_OCTETSTRING, align 4
  %199 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %200 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %204

201:                                              ; preds = %172, %157, %140, %125, %110, %95, %80, %65, %47, %24
  %202 = load i8*, i8** %5, align 8
  %203 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %202)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %204

204:                                              ; preds = %201, %185, %183
  %205 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @warnx(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
