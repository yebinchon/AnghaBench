; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_get_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_get_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_context = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.krb5_key_state*, %struct.krb5_key_state*, %struct.krb5_key_state* }
%struct.krb5_key_state = type { i32*, i32 }
%struct.krb5_keyblock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.krb5_encryption_class = type { i32 }

@ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@KG_USAGE_SIGN = common dso_local global i32 0, align 4
@KG_USAGE_INITIATOR_SEAL = common dso_local global i32 0, align 4
@KG_USAGE_INITIATOR_SIGN = common dso_local global i32 0, align 4
@KG_USAGE_ACCEPTOR_SEAL = common dso_local global i32 0, align 4
@KG_USAGE_ACCEPTOR_SIGN = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_context*)* @get_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_keys(%struct.krb5_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.krb5_context*, align 8
  %4 = alloca %struct.krb5_keyblock*, align 8
  %5 = alloca %struct.krb5_encryption_class*, align 8
  %6 = alloca %struct.krb5_key_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.krb5_key_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.krb5_context* %0, %struct.krb5_context** %3, align 8
  store %struct.krb5_keyblock* null, %struct.krb5_keyblock** %4, align 8
  %12 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %13 = call i32 @get_acceptor_subkey(%struct.krb5_context* %12, %struct.krb5_keyblock** %4)
  %14 = load %struct.krb5_keyblock*, %struct.krb5_keyblock** %4, align 8
  %15 = icmp ne %struct.krb5_keyblock* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %1
  %17 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %18 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ACCEPTOR_SUBKEY, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %25 = call i32 @get_initiator_subkey(%struct.krb5_context* %24, %struct.krb5_keyblock** %4)
  br label %26

26:                                               ; preds = %23, %16
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.krb5_keyblock*, %struct.krb5_keyblock** %4, align 8
  %29 = icmp ne %struct.krb5_keyblock* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %31, i32* %2, align 4
  br label %206

32:                                               ; preds = %27
  %33 = load %struct.krb5_keyblock*, %struct.krb5_keyblock** %4, align 8
  %34 = getelementptr inbounds %struct.krb5_keyblock, %struct.krb5_keyblock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %38 [
    i32 131, label %36
    i32 130, label %36
    i32 129, label %36
    i32 133, label %37
    i32 132, label %37
    i32 128, label %37
  ]

36:                                               ; preds = %32, %32, %32
  store i32 131, i32* %7, align 4
  br label %42

37:                                               ; preds = %32, %32, %32
  store i32 132, i32* %7, align 4
  br label %42

38:                                               ; preds = %32
  %39 = load %struct.krb5_keyblock*, %struct.krb5_keyblock** %4, align 8
  %40 = getelementptr inbounds %struct.krb5_keyblock, %struct.krb5_keyblock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %37, %36
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.krb5_encryption_class* @krb5_find_encryption_class(i32 %43)
  store %struct.krb5_encryption_class* %44, %struct.krb5_encryption_class** %5, align 8
  %45 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %5, align 8
  %46 = icmp ne %struct.krb5_encryption_class* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %48, i32* %2, align 4
  br label %206

49:                                               ; preds = %42
  %50 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %5, align 8
  %51 = call %struct.krb5_key_state* @krb5_create_key(%struct.krb5_encryption_class* %50)
  store %struct.krb5_key_state* %51, %struct.krb5_key_state** %6, align 8
  %52 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %53 = load %struct.krb5_keyblock*, %struct.krb5_keyblock** %4, align 8
  %54 = getelementptr inbounds %struct.krb5_keyblock, %struct.krb5_keyblock* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @krb5_set_key(%struct.krb5_key_state* %52, i32* %56)
  %58 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %59 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %60 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %59, i32 0, i32 11
  store %struct.krb5_key_state* %58, %struct.krb5_key_state** %60, align 8
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %117 [
    i32 131, label %62
    i32 135, label %62
    i32 134, label %62
    i32 132, label %104
  ]

62:                                               ; preds = %49, %49, %49
  %63 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %5, align 8
  %64 = call %struct.krb5_key_state* @krb5_create_key(%struct.krb5_encryption_class* %63)
  store %struct.krb5_key_state* %64, %struct.krb5_key_state** %8, align 8
  %65 = load %struct.krb5_key_state*, %struct.krb5_key_state** %8, align 8
  %66 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %9, align 8
  %68 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %69 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %88, %62
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %5, align 8
  %74 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %82, 240
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %71

91:                                               ; preds = %71
  %92 = load %struct.krb5_key_state*, %struct.krb5_key_state** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @krb5_set_key(%struct.krb5_key_state* %92, i32* %93)
  %95 = load %struct.krb5_key_state*, %struct.krb5_key_state** %8, align 8
  %96 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %97 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %96, i32 0, i32 9
  store %struct.krb5_key_state* %95, %struct.krb5_key_state** %97, align 8
  %98 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %99 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %98, i32 0, i32 1
  %100 = call i32 @refcount_acquire(i32* %99)
  %101 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %102 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %103 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %102, i32 0, i32 10
  store %struct.krb5_key_state* %101, %struct.krb5_key_state** %103, align 8
  br label %204

104:                                              ; preds = %49
  %105 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %106 = load i32, i32* @KG_USAGE_SIGN, align 4
  %107 = call i8* @krb5_get_checksum_key(%struct.krb5_key_state* %105, i32 %106)
  %108 = bitcast i8* %107 to %struct.krb5_key_state*
  %109 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %110 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %109, i32 0, i32 10
  store %struct.krb5_key_state* %108, %struct.krb5_key_state** %110, align 8
  %111 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %112 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %111, i32 0, i32 1
  %113 = call i32 @refcount_acquire(i32* %112)
  %114 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %115 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %116 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %115, i32 0, i32 9
  store %struct.krb5_key_state* %114, %struct.krb5_key_state** %116, align 8
  br label %204

117:                                              ; preds = %49
  %118 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %119 = call i32 @is_initiator(%struct.krb5_context* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %162

121:                                              ; preds = %117
  %122 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %123 = load i32, i32* @KG_USAGE_INITIATOR_SEAL, align 4
  %124 = call i8* @krb5_get_encryption_key(%struct.krb5_key_state* %122, i32 %123)
  %125 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %126 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  %127 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %128 = load i32, i32* @KG_USAGE_INITIATOR_SEAL, align 4
  %129 = call i8* @krb5_get_integrity_key(%struct.krb5_key_state* %127, i32 %128)
  %130 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %131 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %130, i32 0, i32 7
  store i8* %129, i8** %131, align 8
  %132 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %133 = load i32, i32* @KG_USAGE_INITIATOR_SEAL, align 4
  %134 = call i8* @krb5_get_checksum_key(%struct.krb5_key_state* %132, i32 %133)
  %135 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %136 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %135, i32 0, i32 6
  store i8* %134, i8** %136, align 8
  %137 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %138 = load i32, i32* @KG_USAGE_INITIATOR_SIGN, align 4
  %139 = call i8* @krb5_get_checksum_key(%struct.krb5_key_state* %137, i32 %138)
  %140 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %141 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %140, i32 0, i32 5
  store i8* %139, i8** %141, align 8
  %142 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %143 = load i32, i32* @KG_USAGE_ACCEPTOR_SEAL, align 4
  %144 = call i8* @krb5_get_encryption_key(%struct.krb5_key_state* %142, i32 %143)
  %145 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %146 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %148 = load i32, i32* @KG_USAGE_ACCEPTOR_SEAL, align 4
  %149 = call i8* @krb5_get_integrity_key(%struct.krb5_key_state* %147, i32 %148)
  %150 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %151 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  %152 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %153 = load i32, i32* @KG_USAGE_ACCEPTOR_SEAL, align 4
  %154 = call i8* @krb5_get_checksum_key(%struct.krb5_key_state* %152, i32 %153)
  %155 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %156 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  %157 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %158 = load i32, i32* @KG_USAGE_ACCEPTOR_SIGN, align 4
  %159 = call i8* @krb5_get_checksum_key(%struct.krb5_key_state* %157, i32 %158)
  %160 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %161 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  br label %203

162:                                              ; preds = %117
  %163 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %164 = load i32, i32* @KG_USAGE_ACCEPTOR_SEAL, align 4
  %165 = call i8* @krb5_get_encryption_key(%struct.krb5_key_state* %163, i32 %164)
  %166 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %167 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %166, i32 0, i32 8
  store i8* %165, i8** %167, align 8
  %168 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %169 = load i32, i32* @KG_USAGE_ACCEPTOR_SEAL, align 4
  %170 = call i8* @krb5_get_integrity_key(%struct.krb5_key_state* %168, i32 %169)
  %171 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %172 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %171, i32 0, i32 7
  store i8* %170, i8** %172, align 8
  %173 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %174 = load i32, i32* @KG_USAGE_ACCEPTOR_SEAL, align 4
  %175 = call i8* @krb5_get_checksum_key(%struct.krb5_key_state* %173, i32 %174)
  %176 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %177 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %176, i32 0, i32 6
  store i8* %175, i8** %177, align 8
  %178 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %179 = load i32, i32* @KG_USAGE_ACCEPTOR_SIGN, align 4
  %180 = call i8* @krb5_get_checksum_key(%struct.krb5_key_state* %178, i32 %179)
  %181 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %182 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %181, i32 0, i32 5
  store i8* %180, i8** %182, align 8
  %183 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %184 = load i32, i32* @KG_USAGE_INITIATOR_SEAL, align 4
  %185 = call i8* @krb5_get_encryption_key(%struct.krb5_key_state* %183, i32 %184)
  %186 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %187 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  %188 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %189 = load i32, i32* @KG_USAGE_INITIATOR_SEAL, align 4
  %190 = call i8* @krb5_get_integrity_key(%struct.krb5_key_state* %188, i32 %189)
  %191 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %192 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  %193 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %194 = load i32, i32* @KG_USAGE_INITIATOR_SEAL, align 4
  %195 = call i8* @krb5_get_checksum_key(%struct.krb5_key_state* %193, i32 %194)
  %196 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %197 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  %198 = load %struct.krb5_key_state*, %struct.krb5_key_state** %6, align 8
  %199 = load i32, i32* @KG_USAGE_INITIATOR_SIGN, align 4
  %200 = call i8* @krb5_get_checksum_key(%struct.krb5_key_state* %198, i32 %199)
  %201 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %202 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %162, %121
  br label %204

204:                                              ; preds = %203, %104, %91
  %205 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %204, %47, %30
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @get_acceptor_subkey(%struct.krb5_context*, %struct.krb5_keyblock**) #1

declare dso_local i32 @get_initiator_subkey(%struct.krb5_context*, %struct.krb5_keyblock**) #1

declare dso_local %struct.krb5_encryption_class* @krb5_find_encryption_class(i32) #1

declare dso_local %struct.krb5_key_state* @krb5_create_key(%struct.krb5_encryption_class*) #1

declare dso_local i32 @krb5_set_key(%struct.krb5_key_state*, i32*) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i8* @krb5_get_checksum_key(%struct.krb5_key_state*, i32) #1

declare dso_local i32 @is_initiator(%struct.krb5_context*) #1

declare dso_local i8* @krb5_get_encryption_key(%struct.krb5_key_state*, i32) #1

declare dso_local i8* @krb5_get_integrity_key(%struct.krb5_key_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
