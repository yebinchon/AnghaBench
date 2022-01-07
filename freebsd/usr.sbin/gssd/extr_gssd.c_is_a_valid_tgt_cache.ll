; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_is_a_valid_tgt_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_is_a_valid_tgt_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"krbtgt\00", align 1
@pref_realm = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i64*)* @is_a_valid_tgt_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_a_valid_tgt_cache(i8* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.passwd*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.passwd* @getpwuid(i32 %25)
  store %struct.passwd* %26, %struct.passwd** %20, align 8
  %27 = call i64 @krb5_init_context(i32* %10)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %199

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @krb5_cc_resolve(i32 %32, i8* %33, i32* %12)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @krb5_free_context(i32 %38)
  store i32 0, i32* %5, align 4
  br label %199

40:                                               ; preds = %31
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %24, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @krb5_cc_start_seq_get(i32 %41, i32 %42, i32* %14)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %184

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %177, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @krb5_cc_next_cred(i32 %48, i32 %49, i32* %14, %struct.TYPE_6__* %15)
  store i64 %50, i64* %13, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %180

52:                                               ; preds = %47
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %53 = load i32, i32* %10, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @krb5_unparse_name(i32 %53, i32 %55, i8** %23)
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %52
  %60 = load i8*, i8** %23, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 47)
  store i8* %61, i8** %21, align 8
  %62 = load i8*, i8** %21, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %94

64:                                               ; preds = %59
  %65 = load i8*, i8** %21, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %21, align 8
  store i8 0, i8* %65, align 1
  %67 = load i8*, i8** %23, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @time(i32* null)
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  store i32 1, i32* %16, align 4
  %77 = load i8*, i8** %21, align 8
  %78 = call i8* @strchr(i8* %77, i8 signext 64)
  store i8* %78, i8** %22, align 8
  %79 = load i8*, i8** %22, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i8*, i8** %22, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %22, align 8
  store i8 0, i8* %82, align 1
  %84 = load i8*, i8** %21, align 8
  %85 = load i8*, i8** %22, align 8
  %86 = call i64 @strcmp(i8* %84, i8* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %88, %81
  br label %92

92:                                               ; preds = %91, %76
  br label %93

93:                                               ; preds = %92, %70, %64
  br label %94

94:                                               ; preds = %93, %59
  %95 = load i8*, i8** %23, align 8
  %96 = call i32 @free(i8* %95)
  br label %97

97:                                               ; preds = %94, %52
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %177

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @krb5_unparse_name(i32 %101, i32 %103, i8** %23)
  store i64 %104, i64* %13, align 8
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %150

107:                                              ; preds = %100
  %108 = load i8*, i8** %23, align 8
  %109 = call i8* @strchr(i8* %108, i8 signext 64)
  store i8* %109, i8** %21, align 8
  %110 = load i8*, i8** %21, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %149

112:                                              ; preds = %107
  %113 = load i8*, i8** %21, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %21, align 8
  store i8 0, i8* %113, align 1
  %115 = load %struct.passwd*, %struct.passwd** %20, align 8
  %116 = icmp ne %struct.passwd* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load i8*, i8** %23, align 8
  %119 = load %struct.passwd*, %struct.passwd** %20, align 8
  %120 = getelementptr inbounds %struct.passwd, %struct.passwd* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcmp(i8* %118, i8* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %124, %117, %112
  %128 = load i8*, i8** %23, align 8
  %129 = call i8* @strchr(i8* %128, i8 signext 47)
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %131, %127
  %135 = load i8*, i8** @pref_realm, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load i8*, i8** %21, align 8
  %142 = load i8*, i8** @pref_realm, align 8
  %143 = call i64 @strcmp(i8* %141, i8* %142)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %145, %140, %134
  br label %149

149:                                              ; preds = %148, %107
  br label %150

150:                                              ; preds = %149, %100
  %151 = load i8*, i8** %23, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load i32, i32* %18, align 4
  store i32 %157, i32* %17, align 4
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %24, align 8
  br label %176

161:                                              ; preds = %150
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %24, align 8
  %170 = icmp sgt i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %24, align 8
  br label %175

175:                                              ; preds = %171, %165, %161
  br label %176

176:                                              ; preds = %175, %156
  store i32 1, i32* %19, align 4
  br label %177

177:                                              ; preds = %176, %97
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @krb5_free_cred_contents(i32 %178, %struct.TYPE_6__* %15)
  br label %47

180:                                              ; preds = %47
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @krb5_cc_end_seq_get(i32 %181, i32 %182, i32* %14)
  br label %184

184:                                              ; preds = %180, %40
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @krb5_cc_close(i32 %185, i32 %186)
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @krb5_free_context(i32 %188)
  %190 = load i32, i32* %19, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %184
  %193 = load i32, i32* %17, align 4
  %194 = load i32*, i32** %8, align 8
  store i32 %193, i32* %194, align 4
  %195 = load i64, i64* %24, align 8
  %196 = load i64*, i64** %9, align 8
  store i64 %195, i64* %196, align 8
  br label %197

197:                                              ; preds = %192, %184
  %198 = load i32, i32* %19, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %197, %37, %30
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i64 @krb5_cc_resolve(i32, i8*, i32*) #1

declare dso_local i32 @krb5_free_context(i32) #1

declare dso_local i64 @krb5_cc_start_seq_get(i32, i32, i32*) #1

declare dso_local i64 @krb5_cc_next_cred(i32, i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_cc_end_seq_get(i32, i32, i32*) #1

declare dso_local i32 @krb5_cc_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
