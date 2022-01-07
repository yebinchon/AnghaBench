; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_unpack_delta_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_unpack_delta_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.object_id = type { i32 }

@OBJ_REF_DELTA = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_3__* null, align 8
@dry_run = common dso_local global i64 0, align 8
@obj_list = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"offset value overflow for delta base object\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"offset value out of bound for delta base object\00", align 1
@null_oid = common dso_local global %struct.object_id zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to read delta-pack base object %s\00", align 1
@recover = common dso_local global i32 0, align 4
@has_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32)* @unpack_delta_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_delta_entry(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @OBJ_REF_DELTA, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.object_id, %struct.object_id* %10, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_hash_algo, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @fill(i32 %26)
  %28 = call i32 @hashcpy(i32 %23, i8* %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_hash_algo, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @use(i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = call i8* @get_data(i64 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i64, i64* @dry_run, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %21
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %21
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @free(i8* %41)
  br label %227

43:                                               ; preds = %37
  %44 = call i64 @has_object_file(%struct.object_id* %10)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %65

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @resolve_against_held(i32 %48, %struct.object_id* %10, i8* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %227

54:                                               ; preds = %47
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = call i32 @oidclr(i32* %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @add_delta_to_list(i32 %61, %struct.object_id* %10, i32 0, i8* %62, i64 %63)
  br label %227

65:                                               ; preds = %46
  br label %198

66:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %67 = call i8* @fill(i32 1)
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %13, align 1
  %70 = call i32 @use(i32 1)
  %71 = load i8, i8* %13, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 127
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %90, %66
  %75 = load i8, i8* %13, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 128
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %74
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* %14, align 4
  %86 = call i64 @MSB(i32 %85, i32 7)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84, %79
  %89 = call i32 @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  %91 = call i8* @fill(i32 1)
  store i8* %91, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %13, align 1
  %94 = call i32 @use(i32 1)
  %95 = load i32, i32* %14, align 4
  %96 = shl i32 %95, 7
  %97 = load i8, i8* %13, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 127
  %100 = add nsw i32 %96, %99
  store i32 %100, i32* %14, align 4
  br label %74

101:                                              ; preds = %74
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp sge i32 %113, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112, %101
  %122 = call i32 @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %112
  %124 = load i64, i64* %5, align 8
  %125 = call i8* @get_data(i64 %124)
  store i8* %125, i8** %7, align 8
  %126 = load i64, i64* @dry_run, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %7, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %128, %123
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @free(i8* %132)
  br label %227

134:                                              ; preds = %128
  store i32 0, i32* %15, align 4
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %181, %134
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %17, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %182

140:                                              ; preds = %136
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %15, align 4
  %144 = sub i32 %142, %143
  %145 = udiv i32 %144, 2
  %146 = add i32 %141, %145
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %149 = load i32, i32* %16, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %147, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %140
  %156 = load i32, i32* %16, align 4
  store i32 %156, i32* %17, align 4
  br label %181

157:                                              ; preds = %140
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %160 = load i32, i32* %16, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %158, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load i32, i32* %16, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %180

169:                                              ; preds = %157
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %171 = load i32, i32* %16, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = call i32 @oidcpy(%struct.object_id* %10, i32* %174)
  %176 = call i32 @is_null_oid(%struct.object_id* %10)
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  store i32 %179, i32* %11, align 4
  br label %182

180:                                              ; preds = %166
  br label %181

181:                                              ; preds = %180, %155
  br label %136

182:                                              ; preds = %169, %136
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %197, label %185

185:                                              ; preds = %182
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %187 = load i32, i32* %6, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = call i32 @oidclr(i32* %190)
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i8*, i8** %7, align 8
  %195 = load i64, i64* %5, align 8
  %196 = call i32 @add_delta_to_list(i32 %192, %struct.object_id* @null_oid, i32 %193, i8* %194, i64 %195)
  br label %227

197:                                              ; preds = %182
  br label %198

198:                                              ; preds = %197, %65
  %199 = load i32, i32* %6, align 4
  %200 = load i8*, i8** %7, align 8
  %201 = load i64, i64* %5, align 8
  %202 = call i64 @resolve_against_held(i32 %199, %struct.object_id* %10, i8* %200, i64 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %227

205:                                              ; preds = %198
  %206 = call i8* @read_object_file(%struct.object_id* %10, i32* %4, i64* %9)
  store i8* %206, i8** %8, align 8
  %207 = load i8*, i8** %8, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %217, label %209

209:                                              ; preds = %205
  %210 = call i32 @oid_to_hex(%struct.object_id* %10)
  %211 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @recover, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %209
  %215 = call i32 @exit(i32 1) #3
  unreachable

216:                                              ; preds = %209
  store i32 1, i32* @has_errors, align 4
  br label %227

217:                                              ; preds = %205
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %4, align 4
  %220 = load i8*, i8** %8, align 8
  %221 = load i64, i64* %9, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = load i64, i64* %5, align 8
  %224 = call i32 @resolve_delta(i32 %218, i32 %219, i8* %220, i64 %221, i8* %222, i64 %223)
  %225 = load i8*, i8** %8, align 8
  %226 = call i32 @free(i8* %225)
  br label %227

227:                                              ; preds = %217, %216, %204, %185, %131, %54, %53, %40
  ret void
}

declare dso_local i32 @hashcpy(i32, i8*) #1

declare dso_local i8* @fill(i32) #1

declare dso_local i32 @use(i32) #1

declare dso_local i8* @get_data(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @has_object_file(%struct.object_id*) #1

declare dso_local i64 @resolve_against_held(i32, %struct.object_id*, i8*, i64) #1

declare dso_local i32 @oidclr(i32*) #1

declare dso_local i32 @add_delta_to_list(i32, %struct.object_id*, i32, i8*, i64) #1

declare dso_local i64 @MSB(i32, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i32 @is_null_oid(%struct.object_id*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @resolve_delta(i32, i32, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
