; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_read_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_read_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpt_ent = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.g_part_gpt_table = type { i32*, i32* }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32 }
%struct.gpt_hdr = type { i32, i32, i32, i64 }

@GPT_STATE_MISSING = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@GPT_STATE_CORRUPT = common dso_local global i32 0, align 4
@GPT_STATE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpt_ent* (%struct.g_part_gpt_table*, %struct.g_consumer*, i32, %struct.gpt_hdr*)* @gpt_read_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpt_ent* @gpt_read_tbl(%struct.g_part_gpt_table* %0, %struct.g_consumer* %1, i32 %2, %struct.gpt_hdr* %3) #0 {
  %5 = alloca %struct.gpt_ent*, align 8
  %6 = alloca %struct.g_part_gpt_table*, align 8
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpt_hdr*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.gpt_ent*, align 8
  %12 = alloca %struct.gpt_ent*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.g_part_gpt_table* %0, %struct.g_part_gpt_table** %6, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.gpt_hdr* %3, %struct.gpt_hdr** %9, align 8
  %20 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %21 = icmp eq %struct.gpt_hdr* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.gpt_ent* null, %struct.gpt_ent** %5, align 8
  br label %224

23:                                               ; preds = %4
  %24 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %25 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %24, i32 0, i32 0
  %26 = load %struct.g_provider*, %struct.g_provider** %25, align 8
  store %struct.g_provider* %26, %struct.g_provider** %10, align 8
  %27 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %6, align 8
  %31 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load i32, i32* @GPT_STATE_MISSING, align 4
  %37 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %6, align 8
  %38 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %44 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %47 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = mul i32 %45, %48
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %52 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @howmany(i32 %50, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %57 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul i32 %55, %58
  %60 = load i32, i32* @M_WAITOK, align 4
  %61 = load i32, i32* @M_ZERO, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @g_malloc(i32 %59, i32 %62)
  store i8* %63, i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %125, %23
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %133

68:                                               ; preds = %64
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sub i32 %69, %70
  %72 = load i32, i32* @MAXPHYS, align 4
  %73 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %74 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = udiv i32 %72, %75
  %77 = icmp ugt i32 %71, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @MAXPHYS, align 4
  br label %88

80:                                               ; preds = %68
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sub i32 %81, %82
  %84 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %85 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 %83, %86
  br label %88

88:                                               ; preds = %80, %78
  %89 = phi i32 [ %79, %78 ], [ %87, %80 ]
  store i32 %89, i32* %18, align 4
  %90 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %91 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %6, align 8
  %92 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add i32 %97, %98
  %100 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %101 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = mul i32 %99, %102
  %104 = load i32, i32* %18, align 4
  %105 = call i8* @g_read_data(%struct.g_consumer* %90, i32 %103, i32 %104, i32* %19)
  store i8* %105, i8** %14, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %88
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @g_free(i8* %109)
  store %struct.gpt_ent* null, %struct.gpt_ent** %5, align 8
  br label %224

111:                                              ; preds = %88
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %116 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = mul i32 %114, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %113, i64 %119
  %121 = load i32, i32* %18, align 4
  %122 = call i32 @bcopy(i8* %112, i8* %120, i32 %121)
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @g_free(i8* %123)
  br label %125

125:                                              ; preds = %111
  %126 = load i32, i32* @MAXPHYS, align 4
  %127 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %128 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = udiv i32 %126, %129
  %131 = load i32, i32* %15, align 4
  %132 = add i32 %131, %130
  store i32 %132, i32* %15, align 4
  br label %64

133:                                              ; preds = %64
  %134 = load i32, i32* @GPT_STATE_CORRUPT, align 4
  %135 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %6, align 8
  %136 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* %17, align 4
  %143 = call i64 @crc32(i8* %141, i32 %142)
  %144 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %145 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %133
  %149 = load i8*, i8** %13, align 8
  %150 = call i32 @g_free(i8* %149)
  store %struct.gpt_ent* null, %struct.gpt_ent** %5, align 8
  br label %224

151:                                              ; preds = %133
  %152 = load i32, i32* @GPT_STATE_OK, align 4
  %153 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %6, align 8
  %154 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %160 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %161 to i64
  %163 = mul i64 %162, 40
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* @M_WAITOK, align 4
  %166 = load i32, i32* @M_ZERO, align 4
  %167 = or i32 %165, %166
  %168 = call i8* @g_malloc(i32 %164, i32 %167)
  %169 = bitcast i8* %168 to %struct.gpt_ent*
  store %struct.gpt_ent* %169, %struct.gpt_ent** %12, align 8
  store i32 0, i32* %15, align 4
  %170 = load %struct.gpt_ent*, %struct.gpt_ent** %12, align 8
  store %struct.gpt_ent* %170, %struct.gpt_ent** %11, align 8
  %171 = load i8*, i8** %13, align 8
  store i8* %171, i8** %14, align 8
  br label %172

172:                                              ; preds = %209, %151
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %175 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ult i32 %173, %176
  br i1 %177, label %178, label %220

178:                                              ; preds = %172
  %179 = load i8*, i8** %14, align 8
  %180 = load %struct.gpt_ent*, %struct.gpt_ent** %11, align 8
  %181 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %180, i32 0, i32 5
  %182 = call i32 @le_uuid_dec(i8* %179, i32* %181)
  %183 = load i8*, i8** %14, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 16
  %185 = load %struct.gpt_ent*, %struct.gpt_ent** %11, align 8
  %186 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %185, i32 0, i32 4
  %187 = call i32 @le_uuid_dec(i8* %184, i32* %186)
  %188 = load i8*, i8** %14, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 32
  %190 = call i8* @le64dec(i8* %189)
  %191 = load %struct.gpt_ent*, %struct.gpt_ent** %11, align 8
  %192 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  %193 = load i8*, i8** %14, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 40
  %195 = call i8* @le64dec(i8* %194)
  %196 = load %struct.gpt_ent*, %struct.gpt_ent** %11, align 8
  %197 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  %198 = load i8*, i8** %14, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 48
  %200 = call i8* @le64dec(i8* %199)
  %201 = load %struct.gpt_ent*, %struct.gpt_ent** %11, align 8
  %202 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 56
  %205 = load %struct.gpt_ent*, %struct.gpt_ent** %11, align 8
  %206 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @bcopy(i8* %204, i8* %207, i32 8)
  br label %209

209:                                              ; preds = %178
  %210 = load i32, i32* %15, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %15, align 4
  %212 = load %struct.gpt_ent*, %struct.gpt_ent** %11, align 8
  %213 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %212, i32 1
  store %struct.gpt_ent* %213, %struct.gpt_ent** %11, align 8
  %214 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %215 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i8*, i8** %14, align 8
  %218 = zext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %14, align 8
  br label %172

220:                                              ; preds = %172
  %221 = load i8*, i8** %13, align 8
  %222 = call i32 @g_free(i8* %221)
  %223 = load %struct.gpt_ent*, %struct.gpt_ent** %12, align 8
  store %struct.gpt_ent* %223, %struct.gpt_ent** %5, align 8
  br label %224

224:                                              ; preds = %220, %148, %108, %22
  %225 = load %struct.gpt_ent*, %struct.gpt_ent** %5, align 8
  ret %struct.gpt_ent* %225
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i8* @g_malloc(i32, i32) #1

declare dso_local i8* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i64 @crc32(i8*, i32) #1

declare dso_local i32 @le_uuid_dec(i8*, i32*) #1

declare dso_local i8* @le64dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
