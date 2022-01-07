; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.index = type { i32, i32, i32 }
%struct.asn_oid = type { i64, i32* }

@ASN_MAXOCTETSTRING = common dso_local global i32 0, align 4
@ASN_MAXOIDLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, %struct.index*, %struct.asn_oid*)* @snmp_output_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_output_index(%struct.snmp_toolinfo* %0, %struct.index* %1, %struct.asn_oid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca %struct.index*, align 8
  %7 = alloca %struct.asn_oid*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.asn_oid, align 8
  %12 = alloca %struct.asn_oid, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store %struct.index* %1, %struct.index** %6, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %7, align 8
  store i64 1, i64* %9, align 8
  %13 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %14 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %161

19:                                               ; preds = %3
  %20 = call i32 @memset(%struct.asn_oid* %11, i32 0, i32 16)
  %21 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %22 = call i32 @asn_append_oid(%struct.asn_oid* %11, %struct.asn_oid* %21)
  %23 = load %struct.index*, %struct.index** %6, align 8
  %24 = getelementptr inbounds %struct.index, %struct.index* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %157 [
    i32 132, label %26
    i32 130, label %36
    i32 129, label %67
    i32 131, label %98
    i32 135, label %122
    i32 133, label %129
    i32 128, label %136
    i32 134, label %143
  ]

26:                                               ; preds = %19
  %27 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %28 = load %struct.index*, %struct.index** %6, align 8
  %29 = getelementptr inbounds %struct.index, %struct.index* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snmp_output_int(%struct.snmp_toolinfo* %27, i32 %30, i32 %34)
  br label %158

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ASN_MAXOCTETSTRING, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %36
  store i32 -1, i32* %4, align 4
  br label %161

54:                                               ; preds = %46
  %55 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %56 = load %struct.index*, %struct.index** %6, align 8
  %57 = getelementptr inbounds %struct.index, %struct.index* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snmp_output_octetindex(%struct.snmp_toolinfo* %55, i32 %58, %struct.asn_oid* %11)
  %60 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %9, align 8
  br label %158

67:                                               ; preds = %19
  %68 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ASN_MAXOIDLEN, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77, %67
  store i32 -1, i32* %4, align 4
  br label %161

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %9, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %9, align 8
  %93 = call i32 @memset(%struct.asn_oid* %12, i32 0, i32 16)
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @asn_slice_oid(%struct.asn_oid* %12, %struct.asn_oid* %11, i32 1, i64 %94)
  %96 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %97 = call i32 @snmp_output_oid_value(%struct.snmp_toolinfo* %96, %struct.asn_oid* %12)
  br label %158

98:                                               ; preds = %19
  %99 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 4
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 -1, i32* %4, align 4
  br label %161

103:                                              ; preds = %98
  store i64 0, i64* %9, align 8
  br label %104

104:                                              ; preds = %115, %103
  %105 = load i64, i64* %9, align 8
  %106 = icmp slt i64 %105, 4
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %113
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %107
  %116 = load i64, i64* %9, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %9, align 8
  br label %104

118:                                              ; preds = %104
  %119 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %121 = call i32 @snmp_output_ipaddress(%struct.snmp_toolinfo* %119, i32* %120)
  store i64 4, i64* %9, align 8
  br label %158

122:                                              ; preds = %19
  %123 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %124 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @snmp_output_counter(%struct.snmp_toolinfo* %123, i32 %127)
  br label %158

129:                                              ; preds = %19
  %130 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %131 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @snmp_output_gauge(%struct.snmp_toolinfo* %130, i32 %134)
  br label %158

136:                                              ; preds = %19
  %137 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %138 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @snmp_output_ticks(%struct.snmp_toolinfo* %137, i32 %141)
  br label %158

143:                                              ; preds = %19
  %144 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %145 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %146, 2
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 -1, i32* %4, align 4
  br label %161

149:                                              ; preds = %143
  store i64 2, i64* %9, align 8
  %150 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %9, align 8
  %153 = call i32 @memcpy(i32* %10, i32* %151, i64 %152)
  %154 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @snmp_output_counter64(%struct.snmp_toolinfo* %154, i32 %155)
  br label %158

157:                                              ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %161

158:                                              ; preds = %149, %136, %129, %122, %118, %85, %54, %26
  %159 = load i64, i64* %9, align 8
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %158, %157, %148, %102, %84, %53, %18
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @memset(%struct.asn_oid*, i32, i32) #1

declare dso_local i32 @asn_append_oid(%struct.asn_oid*, %struct.asn_oid*) #1

declare dso_local i32 @snmp_output_int(%struct.snmp_toolinfo*, i32, i32) #1

declare dso_local i32 @snmp_output_octetindex(%struct.snmp_toolinfo*, i32, %struct.asn_oid*) #1

declare dso_local i32 @asn_slice_oid(%struct.asn_oid*, %struct.asn_oid*, i32, i64) #1

declare dso_local i32 @snmp_output_oid_value(%struct.snmp_toolinfo*, %struct.asn_oid*) #1

declare dso_local i32 @snmp_output_ipaddress(%struct.snmp_toolinfo*, i32*) #1

declare dso_local i32 @snmp_output_counter(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @snmp_output_gauge(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @snmp_output_ticks(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @snmp_output_counter64(%struct.snmp_toolinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
