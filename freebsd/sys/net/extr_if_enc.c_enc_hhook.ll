; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_enc.c_enc_hhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_enc.c_enc_hhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfil_head = type { i32 }
%struct.osd = type { i32 }
%struct.ipsec_ctx_data = type { i32, i32, i32, %struct.TYPE_5__**, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.enc_softc = type { %struct.ifnet* }

@IFF_UP = common dso_local global i32 0, align 4
@EPFNOSUPPORT = common dso_local global i32 0, align 4
@IPSEC_ENC_BEFORE = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_IBYTES = common dso_local global i32 0, align 4
@V_filter_mask_in = common dso_local global i32 0, align 4
@PFIL_IN = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@V_filter_mask_out = common dso_local global i32 0, align 4
@PFIL_OUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFIL_PASS = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@IPSEC_ENC_AFTER_PFIL = common dso_local global i32 0, align 4
@V_inet6_pfil_head = common dso_local global %struct.pfil_head* null, align 8
@V_inet_pfil_head = common dso_local global %struct.pfil_head* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i8*, %struct.osd*)* @enc_hhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc_hhook(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, %struct.osd* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.osd*, align 8
  %14 = alloca %struct.ipsec_ctx_data*, align 8
  %15 = alloca %struct.enc_softc*, align 8
  %16 = alloca %struct.ifnet*, align 8
  %17 = alloca %struct.ifnet*, align 8
  %18 = alloca %struct.pfil_head*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.osd* %5, %struct.osd** %13, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.enc_softc*
  store %struct.enc_softc* %21, %struct.enc_softc** %15, align 8
  %22 = load %struct.enc_softc*, %struct.enc_softc** %15, align 8
  %23 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %22, i32 0, i32 0
  %24 = load %struct.ifnet*, %struct.ifnet** %23, align 8
  store %struct.ifnet* %24, %struct.ifnet** %16, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %199

32:                                               ; preds = %6
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast i8* %33 to %struct.ipsec_ctx_data*
  store %struct.ipsec_ctx_data* %34, %struct.ipsec_ctx_data** %14, align 8
  %35 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %36 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @EPFNOSUPPORT, align 4
  store i32 %41, i32* %7, align 4
  br label %199

42:                                               ; preds = %32
  %43 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %44 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %45 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %49 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %53 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %56 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @enc_bpftap(%struct.ifnet* %43, %struct.TYPE_5__* %47, i32 %50, i32 %51, i32 %54, i32 %57)
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %120 [
    i32 129, label %60
    i32 128, label %90
  ]

60:                                               ; preds = %42
  %61 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %62 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IPSEC_ENC_BEFORE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %68 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %69 = call i32 @if_inc_counter(%struct.ifnet* %67, i32 %68, i32 1)
  %70 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %71 = load i32, i32* @IFCOUNTER_IBYTES, align 4
  %72 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %73 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %72, i32 0, i32 3
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @if_inc_counter(%struct.ifnet* %70, i32 %71, i32 %78)
  br label %80

80:                                               ; preds = %66, %60
  %81 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %82 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @V_filter_mask_in, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %199

88:                                               ; preds = %80
  %89 = load i32, i32* @PFIL_IN, align 4
  store i32 %89, i32* %19, align 4
  br label %122

90:                                               ; preds = %42
  %91 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %92 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IPSEC_ENC_BEFORE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %98 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %99 = call i32 @if_inc_counter(%struct.ifnet* %97, i32 %98, i32 1)
  %100 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %101 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %102 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %103 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %102, i32 0, i32 3
  %104 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @if_inc_counter(%struct.ifnet* %100, i32 %101, i32 %108)
  br label %110

110:                                              ; preds = %96, %90
  %111 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %112 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @V_filter_mask_out, align 4
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %199

118:                                              ; preds = %110
  %119 = load i32, i32* @PFIL_OUT, align 4
  store i32 %119, i32* %19, align 4
  br label %122

120:                                              ; preds = %42
  %121 = load i32, i32* @EINVAL, align 4
  store i32 %121, i32* %7, align 4
  br label %199

122:                                              ; preds = %118, %88
  %123 = load i32, i32* %9, align 4
  switch i32 %123, label %124 [
  ]

124:                                              ; preds = %122
  store %struct.pfil_head* null, %struct.pfil_head** %18, align 8
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.pfil_head*, %struct.pfil_head** %18, align 8
  %127 = icmp eq %struct.pfil_head* %126, null
  br i1 %127, label %144, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* @PFIL_OUT, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load %struct.pfil_head*, %struct.pfil_head** %18, align 8
  %134 = call i32 @PFIL_HOOKED_OUT(%struct.pfil_head* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132, %128
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* @PFIL_IN, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load %struct.pfil_head*, %struct.pfil_head** %18, align 8
  %142 = call i32 @PFIL_HOOKED_IN(%struct.pfil_head* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140, %132, %125
  store i32 0, i32* %7, align 4
  br label %199

145:                                              ; preds = %140, %136
  %146 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %147 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %146, i32 0, i32 3
  %148 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %147, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load %struct.ifnet*, %struct.ifnet** %151, align 8
  store %struct.ifnet* %152, %struct.ifnet** %17, align 8
  %153 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %154 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %155 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %154, i32 0, i32 3
  %156 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %155, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store %struct.ifnet* %153, %struct.ifnet** %159, align 8
  %160 = load %struct.pfil_head*, %struct.pfil_head** %18, align 8
  %161 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %162 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %161, i32 0, i32 3
  %163 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %162, align 8
  %164 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %165 = load i32, i32* %19, align 4
  %166 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %167 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @pfil_run_hooks(%struct.pfil_head* %160, %struct.TYPE_5__** %163, %struct.ifnet* %164, i32 %165, i32 %168)
  %170 = load i64, i64* @PFIL_PASS, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %145
  %173 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %174 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %173, i32 0, i32 3
  %175 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %174, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %175, align 8
  %176 = load i32, i32* @EACCES, align 4
  store i32 %176, i32* %7, align 4
  br label %199

177:                                              ; preds = %145
  %178 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  %179 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %180 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %179, i32 0, i32 3
  %181 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %180, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  store %struct.ifnet* %178, %struct.ifnet** %184, align 8
  %185 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %186 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %187 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %186, i32 0, i32 3
  %188 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %187, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %191 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @IPSEC_ENC_AFTER_PFIL, align 4
  %195 = load %struct.ipsec_ctx_data*, %struct.ipsec_ctx_data** %14, align 8
  %196 = getelementptr inbounds %struct.ipsec_ctx_data, %struct.ipsec_ctx_data* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @enc_bpftap(%struct.ifnet* %185, %struct.TYPE_5__* %189, i32 %192, i32 %193, i32 %194, i32 %197)
  store i32 0, i32* %7, align 4
  br label %199

199:                                              ; preds = %177, %172, %144, %120, %117, %87, %40, %31
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local i32 @enc_bpftap(%struct.ifnet*, %struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @PFIL_HOOKED_OUT(%struct.pfil_head*) #1

declare dso_local i32 @PFIL_HOOKED_IN(%struct.pfil_head*) #1

declare dso_local i64 @pfil_run_hooks(%struct.pfil_head*, %struct.TYPE_5__**, %struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
