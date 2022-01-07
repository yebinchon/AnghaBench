; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.krb5_context = type { i32, i32, i32, %struct.TYPE_5__, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct.TYPE_5__ = type { i32, i8*, i8**, i8*, i8*, i8* }

@KGSS_HEIMDAL_0_6 = common dso_local global i32 0, align 4
@KGSS_HEIMDAL_1_1 = common dso_local global i32 0, align 4
@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@krb5_mech_oid = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@SC_KEYBLOCK = common dso_local global i32 0, align 4
@SC_LOCAL_ADDRESS = common dso_local global i32 0, align 4
@SC_LOCAL_SUBKEY = common dso_local global i32 0, align 4
@SC_REMOTE_ADDRESS = common dso_local global i32 0, align 4
@SC_REMOTE_SUBKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.TYPE_6__*)* @krb5_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_import(i64 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.krb5_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.krb5_context*
  store %struct.krb5_context* %15, %struct.krb5_context** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @KGSS_HEIMDAL_0_6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @KGSS_HEIMDAL_1_1, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %31, i32* %4, align 4
  br label %228

32:                                               ; preds = %26, %3
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @krb5_mech_oid, i32 0, i32 0), align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %56, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @krb5_mech_oid, i32 0, i32 0), align 4
  %46 = add nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @krb5_mech_oid, i32 0, i32 1), align 4
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @krb5_mech_oid, i32 0, i32 0), align 4
  %54 = call i64 @bcmp(i32 %50, i32* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49, %43, %37, %32
  %57 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %57, i32* %4, align 4
  br label %228

58:                                               ; preds = %49
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @krb5_mech_oid, i32 0, i32 0), align 4
  %60 = add nsw i32 %59, 2
  %61 = load i32*, i32** %10, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %10, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @krb5_mech_oid, i32 0, i32 0), align 4
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %11, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %11, align 8
  %69 = call i8* @get_uint32(i32** %10, i64* %11)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = call i8* @get_uint32(i32** %10, i64* %11)
  %72 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %73 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %72, i32 0, i32 17
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %12, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %58
  %78 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %79 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %78, i32 0, i32 16
  %80 = call i32 @get_address(i32** %10, i64* %11, i32* %79)
  br label %81

81:                                               ; preds = %77, %58
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %87 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %86, i32 0, i32 15
  %88 = call i32 @get_address(i32** %10, i64* %11, i32* %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = call i8* @get_uint16(i32** %10, i64* %11)
  %91 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %92 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %91, i32 0, i32 14
  store i8* %90, i8** %92, align 8
  %93 = call i8* @get_uint16(i32** %10, i64* %11)
  %94 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %95 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %94, i32 0, i32 13
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %101 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %100, i32 0, i32 2
  %102 = call i32 @get_keyblock(i32** %10, i64* %11, i32* %101)
  br label %103

103:                                              ; preds = %99, %89
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %109 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %108, i32 0, i32 1
  %110 = call i32 @get_keyblock(i32** %10, i64* %11, i32* %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, 16
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %117 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %116, i32 0, i32 0
  %118 = call i32 @get_keyblock(i32** %10, i64* %11, i32* %117)
  br label %119

119:                                              ; preds = %115, %111
  %120 = call i8* @get_uint32(i32** %10, i64* %11)
  %121 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %122 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %121, i32 0, i32 12
  store i8* %120, i8** %122, align 8
  %123 = call i8* @get_uint32(i32** %10, i64* %11)
  %124 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %125 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %124, i32 0, i32 11
  store i8* %123, i8** %125, align 8
  %126 = call i8* @get_uint32(i32** %10, i64* %11)
  %127 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %128 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %127, i32 0, i32 10
  store i8* %126, i8** %128, align 8
  %129 = call i8* @get_uint32(i32** %10, i64* %11)
  %130 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %131 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %130, i32 0, i32 9
  store i8* %129, i8** %131, align 8
  %132 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %133 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %132, i32 0, i32 8
  %134 = call i32 @get_data(i32** %10, i64* %11, i32* %133)
  %135 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %136 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %135, i32 0, i32 7
  %137 = call i32 @get_data(i32** %10, i64* %11, i32* %136)
  %138 = call i8* @get_uint32(i32** %10, i64* %11)
  %139 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %140 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %139, i32 0, i32 6
  store i8* %138, i8** %140, align 8
  %141 = call i8* @get_uint32(i32** %10, i64* %11)
  %142 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %143 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  %144 = call i8* @get_uint32(i32** %10, i64* %11)
  %145 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %146 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @KGSS_HEIMDAL_1_1, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %205

150:                                              ; preds = %119
  %151 = call i8* @get_uint32(i32** %10, i64* %11)
  %152 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %153 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  store i8* %151, i8** %154, align 8
  %155 = call i8* @get_uint32(i32** %10, i64* %11)
  %156 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %157 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 5
  store i8* %155, i8** %158, align 8
  %159 = call i8* @get_uint32(i32** %10, i64* %11)
  %160 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %161 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 4
  store i8* %159, i8** %162, align 8
  %163 = call i8* @get_uint32(i32** %10, i64* %11)
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %166 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  %168 = call i8* @get_uint32(i32** %10, i64* %11)
  %169 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %170 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  store i8* %168, i8** %171, align 8
  %172 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %173 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  %178 = trunc i64 %177 to i32
  %179 = load i32, i32* @M_GSSAPI, align 4
  %180 = load i32, i32* @M_WAITOK, align 4
  %181 = call i8** @malloc(i32 %178, i32 %179, i32 %180)
  %182 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %183 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 2
  store i8** %181, i8*** %184, align 8
  store i32 0, i32* %13, align 4
  br label %185

185:                                              ; preds = %201, %150
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %188 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %186, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %185
  %193 = call i8* @get_uint32(i32** %10, i64* %11)
  %194 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %195 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  %197 = load i8**, i8*** %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  store i8* %193, i8** %200, align 8
  br label %201

201:                                              ; preds = %192
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  br label %185

204:                                              ; preds = %185
  br label %209

205:                                              ; preds = %119
  %206 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %207 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  store i8* null, i8** %208, align 8
  br label %209

209:                                              ; preds = %205, %204
  %210 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %211 = call i32 @get_keys(%struct.krb5_context* %210)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i64 @GSS_ERROR(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %209
  %216 = load i32, i32* %9, align 4
  store i32 %216, i32* %4, align 4
  br label %228

217:                                              ; preds = %209
  %218 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %219 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %218, i32 0, i32 2
  %220 = call i32 @delete_keyblock(i32* %219)
  %221 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %222 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %221, i32 0, i32 1
  %223 = call i32 @delete_keyblock(i32* %222)
  %224 = load %struct.krb5_context*, %struct.krb5_context** %8, align 8
  %225 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %224, i32 0, i32 0
  %226 = call i32 @delete_keyblock(i32* %225)
  %227 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %227, i32* %4, align 4
  br label %228

228:                                              ; preds = %217, %215, %56, %30
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i64 @bcmp(i32, i32*, i32) #1

declare dso_local i8* @get_uint32(i32**, i64*) #1

declare dso_local i32 @get_address(i32**, i64*, i32*) #1

declare dso_local i8* @get_uint16(i32**, i64*) #1

declare dso_local i32 @get_keyblock(i32**, i64*, i32*) #1

declare dso_local i32 @get_data(i32**, i64*, i32*) #1

declare dso_local i8** @malloc(i32, i32, i32) #1

declare dso_local i32 @get_keys(%struct.krb5_context*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @delete_keyblock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
