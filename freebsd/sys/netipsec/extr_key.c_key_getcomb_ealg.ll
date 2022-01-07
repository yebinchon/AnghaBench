; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_getcomb_ealg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_getcomb_ealg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.mbuf* }
%struct.sadb_comb = type { i32, i32, i8* }
%struct.enc_xform = type { i32, i32 }

@SADB_EALG_MAX = common dso_local global i32 0, align 4
@V_ipsec_esp_keymin = common dso_local global i8* null, align 8
@V_ipsec_esp_auth = common dso_local global i64 0, align 8
@MLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"l=%u > MLEN=%lu\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"totlen=%u, l=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* ()* @key_getcomb_ealg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @key_getcomb_ealg() #0 {
  %1 = alloca %struct.mbuf*, align 8
  %2 = alloca %struct.sadb_comb*, align 8
  %3 = alloca %struct.enc_xform*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  %13 = call i32 @PFKEY_ALIGN8(i32 16)
  store i32 %13, i32* %12, align 4
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %165, %0
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SADB_EALG_MAX, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %168

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.enc_xform* @enc_algorithm_lookup(i32 %19)
  store %struct.enc_xform* %20, %struct.enc_xform** %3, align 8
  %21 = load %struct.enc_xform*, %struct.enc_xform** %3, align 8
  %22 = icmp eq %struct.enc_xform* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %165

24:                                               ; preds = %18
  %25 = load %struct.enc_xform*, %struct.enc_xform** %3, align 8
  %26 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @_BITS(i32 %27)
  %29 = load i8*, i8** @V_ipsec_esp_keymin, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %165

32:                                               ; preds = %24
  %33 = load %struct.enc_xform*, %struct.enc_xform** %3, align 8
  %34 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @_BITS(i32 %35)
  %37 = load i8*, i8** @V_ipsec_esp_keymin, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i8*, i8** @V_ipsec_esp_keymin, align 8
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %7, align 4
  br label %48

42:                                               ; preds = %32
  %43 = load %struct.enc_xform*, %struct.enc_xform** %3, align 8
  %44 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @_BITS(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i64, i64* @V_ipsec_esp_auth, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call %struct.mbuf* (...) @key_getcomb_ah()
  store %struct.mbuf* %52, %struct.mbuf** %5, align 8
  br label %86

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @MLEN, align 4
  %56 = icmp sle i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @MLEN, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @IPSEC_ASSERT(i32 %57, i8* %61)
  %63 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %64 = load i32, i32* @M_NOWAIT, align 4
  %65 = load i32, i32* @MT_DATA, align 4
  %66 = call i32 @MGET(%struct.mbuf* %63, i32 %64, i32 %65)
  %67 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %68 = icmp ne %struct.mbuf* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %53
  %70 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @M_ALIGN(%struct.mbuf* %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %77, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %79 = load i32, i32* @caddr_t, align 4
  %80 = call %struct.sadb_comb* @mtod(%struct.mbuf* %78, i32 %79)
  %81 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %82 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @bzero(%struct.sadb_comb* %80, i32 %83)
  br label %85

85:                                               ; preds = %69, %53
  br label %86

86:                                               ; preds = %85, %51
  %87 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %88 = icmp ne %struct.mbuf* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %170

90:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  %91 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %91, %struct.mbuf** %6, align 8
  br label %92

92:                                               ; preds = %101, %90
  %93 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %94 = icmp ne %struct.mbuf* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %95
  %102 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %103 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %102, i32 0, i32 1
  %104 = load %struct.mbuf*, %struct.mbuf** %103, align 8
  store %struct.mbuf* %104, %struct.mbuf** %6, align 8
  br label %92

105:                                              ; preds = %92
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = srem i32 %106, %107
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @IPSEC_ASSERT(i32 %110, i8* %114)
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %151, %105
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %155

120:                                              ; preds = %116
  %121 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call %struct.mbuf* @m_pulldown(%struct.mbuf* %121, i32 %122, i32 %123, i32* %10)
  store %struct.mbuf* %124, %struct.mbuf** %6, align 8
  %125 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %126 = icmp ne %struct.mbuf* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %170

128:                                              ; preds = %120
  %129 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %130 = load i32, i32* @caddr_t, align 4
  %131 = call %struct.sadb_comb* @mtod(%struct.mbuf* %129, i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %131, i64 %133
  store %struct.sadb_comb* %134, %struct.sadb_comb** %2, align 8
  %135 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %136 = call i32 @bzero(%struct.sadb_comb* %135, i32 16)
  %137 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %138 = call i32 @key_getcomb_setlifetime(%struct.sadb_comb* %137)
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %141 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %144 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.enc_xform*, %struct.enc_xform** %3, align 8
  %146 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @_BITS(i32 %147)
  %149 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %150 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %128
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %9, align 4
  br label %116

155:                                              ; preds = %116
  %156 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %157 = icmp ne %struct.mbuf* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %159, %struct.mbuf** %4, align 8
  br label %164

160:                                              ; preds = %155
  %161 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %162 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %163 = call i32 @m_cat(%struct.mbuf* %161, %struct.mbuf* %162)
  br label %164

164:                                              ; preds = %160, %158
  br label %165

165:                                              ; preds = %164, %31, %23
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %14

168:                                              ; preds = %14
  %169 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %169, %struct.mbuf** %1, align 8
  br label %177

170:                                              ; preds = %127, %89
  %171 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %172 = icmp ne %struct.mbuf* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %175 = call i32 @m_freem(%struct.mbuf* %174)
  br label %176

176:                                              ; preds = %173, %170
  store %struct.mbuf* null, %struct.mbuf** %1, align 8
  br label %177

177:                                              ; preds = %176, %168
  %178 = load %struct.mbuf*, %struct.mbuf** %1, align 8
  ret %struct.mbuf* %178
}

declare dso_local i32 @PFKEY_ALIGN8(i32) #1

declare dso_local %struct.enc_xform* @enc_algorithm_lookup(i32) #1

declare dso_local i8* @_BITS(i32) #1

declare dso_local %struct.mbuf* @key_getcomb_ah(...) #1

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @M_ALIGN(%struct.mbuf*, i32) #1

declare dso_local i32 @bzero(%struct.sadb_comb*, i32) #1

declare dso_local %struct.sadb_comb* @mtod(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_pulldown(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @key_getcomb_setlifetime(%struct.sadb_comb*) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
