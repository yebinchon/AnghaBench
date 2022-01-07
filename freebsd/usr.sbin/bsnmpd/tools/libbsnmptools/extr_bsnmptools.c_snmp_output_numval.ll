; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_numval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_numval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.snmp_value = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snmp_oid2str = type { i32, i32* }

@OUTPUT_QUIET = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" = \00", align 1
@SNMP_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"No Such Object\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"No Such Instance\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"End of Mib View\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"agent returned NULL Syntax\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"agent returned unknown syntax\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_output_numval(%struct.snmp_toolinfo* %0, %struct.snmp_value* %1, %struct.snmp_oid2str* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca %struct.snmp_oid2str*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %6, align 8
  store %struct.snmp_oid2str* %2, %struct.snmp_oid2str** %7, align 8
  %8 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %9 = icmp eq %struct.snmp_value* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %149

11:                                               ; preds = %3
  %12 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %13 = call i64 @GET_OUTPUT(%struct.snmp_toolinfo* %12)
  %14 = load i64, i64* @OUTPUT_QUIET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %21 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %143 [
    i32 135, label %23
    i32 130, label %44
    i32 129, label %78
    i32 134, label %84
    i32 139, label %91
    i32 136, label %98
    i32 128, label %105
    i32 138, label %112
    i32 132, label %119
    i32 133, label %125
    i32 137, label %131
    i32 131, label %137
  ]

23:                                               ; preds = %19
  %24 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %25 = icmp ne %struct.snmp_oid2str* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %28 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %29 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %32 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snmp_output_int(%struct.snmp_toolinfo* %27, i32* %30, i32 %34)
  br label %43

36:                                               ; preds = %23
  %37 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %38 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %39 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snmp_output_int(%struct.snmp_toolinfo* %37, i32* null, i32 %41)
  br label %43

43:                                               ; preds = %36, %26
  br label %146

44:                                               ; preds = %19
  %45 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %46 = icmp ne %struct.snmp_oid2str* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %49 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %7, align 8
  %50 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %53 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %58 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snmp_output_octetstring(%struct.snmp_toolinfo* %48, i32 %51, i32 %56, i32 %61)
  br label %77

63:                                               ; preds = %44
  %64 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %65 = load i32, i32* @SNMP_STRING, align 4
  %66 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %67 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %72 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @snmp_output_octetstring(%struct.snmp_toolinfo* %64, i32 %65, i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %63, %47
  br label %146

78:                                               ; preds = %19
  %79 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %80 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %81 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = call i32 @snmp_output_oid_value(%struct.snmp_toolinfo* %79, i32* %82)
  br label %146

84:                                               ; preds = %19
  %85 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %86 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %87 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @snmp_output_ipaddress(%struct.snmp_toolinfo* %85, i32 %89)
  br label %146

91:                                               ; preds = %19
  %92 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %93 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %94 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @snmp_output_counter(%struct.snmp_toolinfo* %92, i32 %96)
  br label %146

98:                                               ; preds = %19
  %99 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %100 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %101 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @snmp_output_gauge(%struct.snmp_toolinfo* %99, i32 %103)
  br label %146

105:                                              ; preds = %19
  %106 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %107 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %108 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @snmp_output_ticks(%struct.snmp_toolinfo* %106, i32 %110)
  br label %146

112:                                              ; preds = %19
  %113 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %114 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %115 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @snmp_output_counter64(%struct.snmp_toolinfo* %113, i32 %117)
  br label %146

119:                                              ; preds = %19
  %120 = load i32, i32* @stdout, align 4
  %121 = call i32 @fprintf(i32 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %122 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %123 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %4, align 4
  br label %149

125:                                              ; preds = %19
  %126 = load i32, i32* @stdout, align 4
  %127 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %128 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %129 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %4, align 4
  br label %149

131:                                              ; preds = %19
  %132 = load i32, i32* @stdout, align 4
  %133 = call i32 @fprintf(i32 %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %134 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %135 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %4, align 4
  br label %149

137:                                              ; preds = %19
  %138 = load i32, i32* @stdout, align 4
  %139 = call i32 @fprintf(i32 %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %140 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %141 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %4, align 4
  br label %149

143:                                              ; preds = %19
  %144 = load i32, i32* @stdout, align 4
  %145 = call i32 @fprintf(i32 %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %149

146:                                              ; preds = %112, %105, %98, %91, %84, %78, %77, %43
  %147 = load i32, i32* @stdout, align 4
  %148 = call i32 @fprintf(i32 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %146, %143, %137, %131, %125, %119, %10
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @GET_OUTPUT(%struct.snmp_toolinfo*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @snmp_output_int(%struct.snmp_toolinfo*, i32*, i32) #1

declare dso_local i32 @snmp_output_octetstring(%struct.snmp_toolinfo*, i32, i32, i32) #1

declare dso_local i32 @snmp_output_oid_value(%struct.snmp_toolinfo*, i32*) #1

declare dso_local i32 @snmp_output_ipaddress(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @snmp_output_counter(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @snmp_output_gauge(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @snmp_output_ticks(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @snmp_output_counter64(%struct.snmp_toolinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
