; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exec = type { i32, i64, i32, i32, i64, i64, i64, i64 }
%struct.relocation_info = type { i32 }
%struct.nlist = type { i32 }
%struct._dynamic = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.section_dispatch_table = type { i32, i32, i32, i32 }
%struct.nzlist = type { i32 }
%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"cannot stat \22%s\22\00", align 1
@error_count = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\22%s\22 is not a regular file\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"cannot open \22%s\22\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"cannot mmap \22%s\22\00", align 1
@file_base = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"%s: this is an ELF program; use readelf to examine\00", align 1
@ex = common dso_local global %struct.exec* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"%s: a_midmag = 0x%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"  magic = 0x%lx = 0%lo, netmagic = 0x%lx = 0%lo\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s: bad magic number\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"  a_text   = 0x%lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"  a_data   = 0x%lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"  a_bss    = 0x%lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"  a_syms   = 0x%lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"  a_entry  = 0x%lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"  a_trsize = 0x%lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"  a_drsize = 0x%lx\0A\00", align 1
@text_base = common dso_local global i8* null, align 8
@data_base = common dso_local global i8* null, align 8
@rel_base = common dso_local global %struct.relocation_info* null, align 8
@sym_base = common dso_local global %struct.nlist* null, align 8
@str_base = common dso_local global i8* null, align 8
@rel_count = common dso_local global i32 0, align 4
@sym_count = common dso_local global i32 0, align 4
@sym_used = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"  Entry = 0x%lx\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"  Text offset = %x, address = %lx\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"  Data offset = %lx, address = %lx\0A\00", align 1
@text_addr = common dso_local global i8* null, align 8
@data_addr = common dso_local global i8* null, align 8
@origin = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [25 x i8] c"  Program, origin = %lx\0A\00", align 1
@EX_DYNAMIC = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [32 x i8] c"  Shared library, origin = %lx\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"  Object file, origin = %lx\0A\00", align 1
@dyn = common dso_local global %struct._dynamic* null, align 8
@.str.21 = private unnamed_addr constant [24 x i8] c"  Dynamic version = %d\0A\00", align 1
@sdt = common dso_local global %struct.section_dispatch_table* null, align 8
@rtrel_base = common dso_local global %struct.relocation_info* null, align 8
@rtrel_count = common dso_local global i32 0, align 4
@rtsym_base = common dso_local global %struct.nzlist* null, align 8
@rtsym_count = common dso_local global i32 0, align 4
@rtsym_used = common dso_local global i8* null, align 8
@rtstr_base = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"Relocations\00", align 1
@sym_name = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [21 x i8] c"Run-time relocations\00", align 1
@rtsym_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @stat(i8* %6, %struct.stat* %4)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @error_count, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @error_count, align 4
  br label %395

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @S_IFMT, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @S_IFREG, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @error_count, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @error_count, align 4
  br label %395

26:                                               ; preds = %14
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = call i32 @open(i8* %27, i32 %28, i32 0)
  store i32 %29, i32* %3, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @error_count, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @error_count, align 4
  br label %395

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PROT_READ, align 4
  %40 = load i32, i32* @MAP_SHARED, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @mmap(i32 0, i32 %38, i32 %39, i32 %40, i32 %41, i32 0)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @error_count, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @error_count, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @close(i32 %50)
  br label %395

52:                                               ; preds = %36
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i64, i64* %5, align 8
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** @file_base, align 8
  %57 = load i8*, i8** @file_base, align 8
  %58 = call i64 @align_struct(i8* %57)
  %59 = inttoptr i64 %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ELF(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %52
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @error_count, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @error_count, align 4
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @munmap(i64 %68, i32 %70)
  br label %395

72:                                               ; preds = %52
  %73 = load i8*, i8** @file_base, align 8
  %74 = call i64 @align_struct(i8* %73)
  %75 = inttoptr i64 %74 to %struct.exec*
  store %struct.exec* %75, %struct.exec** @ex, align 8
  %76 = load i8*, i8** %2, align 8
  %77 = load %struct.exec*, %struct.exec** @ex, align 8
  %78 = getelementptr inbounds %struct.exec, %struct.exec* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %76, i64 %79)
  %81 = load %struct.exec*, %struct.exec** @ex, align 8
  %82 = call i64 @N_GETMAGIC(%struct.exec* byval(%struct.exec) align 8 %81)
  %83 = load %struct.exec*, %struct.exec** @ex, align 8
  %84 = call i64 @N_GETMAGIC(%struct.exec* byval(%struct.exec) align 8 %83)
  %85 = load %struct.exec*, %struct.exec** @ex, align 8
  %86 = call i64 @N_GETMAGIC_NET(%struct.exec* byval(%struct.exec) align 8 %85)
  %87 = load %struct.exec*, %struct.exec** @ex, align 8
  %88 = call i64 @N_GETMAGIC_NET(%struct.exec* byval(%struct.exec) align 8 %87)
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i64 %82, i64 %84, i64 %86, i64 %88)
  %90 = load %struct.exec*, %struct.exec** @ex, align 8
  %91 = call i64 @N_BADMAG(%struct.exec* byval(%struct.exec) align 8 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %72
  %94 = load i8*, i8** %2, align 8
  %95 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* @error_count, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @error_count, align 4
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @munmap(i64 %98, i32 %100)
  br label %395

102:                                              ; preds = %72
  %103 = load %struct.exec*, %struct.exec** @ex, align 8
  %104 = getelementptr inbounds %struct.exec, %struct.exec* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %105)
  %107 = load %struct.exec*, %struct.exec** @ex, align 8
  %108 = getelementptr inbounds %struct.exec, %struct.exec* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %109)
  %111 = load %struct.exec*, %struct.exec** @ex, align 8
  %112 = getelementptr inbounds %struct.exec, %struct.exec* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %113)
  %115 = load %struct.exec*, %struct.exec** @ex, align 8
  %116 = getelementptr inbounds %struct.exec, %struct.exec* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64 %118)
  %120 = load %struct.exec*, %struct.exec** @ex, align 8
  %121 = getelementptr inbounds %struct.exec, %struct.exec* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i64 %122)
  %124 = load %struct.exec*, %struct.exec** @ex, align 8
  %125 = getelementptr inbounds %struct.exec, %struct.exec* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i64 %127)
  %129 = load %struct.exec*, %struct.exec** @ex, align 8
  %130 = getelementptr inbounds %struct.exec, %struct.exec* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i64 %132)
  %134 = load i8*, i8** @file_base, align 8
  %135 = load %struct.exec*, %struct.exec** @ex, align 8
  %136 = call i32 @N_TXTOFF(%struct.exec* byval(%struct.exec) align 8 %135)
  %137 = sext i32 %136 to i64
  %138 = getelementptr i8, i8* %134, i64 %137
  store i8* %138, i8** @text_base, align 8
  %139 = load i8*, i8** @file_base, align 8
  %140 = load %struct.exec*, %struct.exec** @ex, align 8
  %141 = call i32 @N_DATOFF(%struct.exec* byval(%struct.exec) align 8 %140)
  %142 = sext i32 %141 to i64
  %143 = getelementptr i8, i8* %139, i64 %142
  store i8* %143, i8** @data_base, align 8
  %144 = load i8*, i8** @file_base, align 8
  %145 = load %struct.exec*, %struct.exec** @ex, align 8
  %146 = call i32 @N_RELOFF(%struct.exec* byval(%struct.exec) align 8 %145)
  %147 = sext i32 %146 to i64
  %148 = getelementptr i8, i8* %144, i64 %147
  %149 = call i64 @align_struct(i8* %148)
  %150 = inttoptr i64 %149 to %struct.relocation_info*
  store %struct.relocation_info* %150, %struct.relocation_info** @rel_base, align 8
  %151 = load i8*, i8** @file_base, align 8
  %152 = load %struct.exec*, %struct.exec** @ex, align 8
  %153 = call i32 @N_SYMOFF(%struct.exec* byval(%struct.exec) align 8 %152)
  %154 = sext i32 %153 to i64
  %155 = getelementptr i8, i8* %151, i64 %154
  %156 = call i64 @align_struct(i8* %155)
  %157 = inttoptr i64 %156 to %struct.nlist*
  store %struct.nlist* %157, %struct.nlist** @sym_base, align 8
  %158 = load i8*, i8** @file_base, align 8
  %159 = load %struct.exec*, %struct.exec** @ex, align 8
  %160 = call i32 @N_STROFF(%struct.exec* byval(%struct.exec) align 8 %159)
  %161 = sext i32 %160 to i64
  %162 = getelementptr i8, i8* %158, i64 %161
  store i8* %162, i8** @str_base, align 8
  %163 = load %struct.exec*, %struct.exec** @ex, align 8
  %164 = getelementptr inbounds %struct.exec, %struct.exec* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.exec*, %struct.exec** @ex, align 8
  %167 = getelementptr inbounds %struct.exec, %struct.exec* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %165, %168
  %170 = sext i32 %169 to i64
  %171 = udiv i64 %170, 4
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* @rel_count, align 4
  %173 = load i32, i32* @rel_count, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = load %struct.exec*, %struct.exec** @ex, align 8
  %177 = getelementptr inbounds %struct.exec, %struct.exec* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.exec*, %struct.exec** @ex, align 8
  %180 = getelementptr inbounds %struct.exec, %struct.exec* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %178, %181
  %183 = sext i32 %182 to i64
  %184 = icmp eq i64 %175, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load %struct.exec*, %struct.exec** @ex, align 8
  %188 = getelementptr inbounds %struct.exec, %struct.exec* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = udiv i64 %190, 4
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* @sym_count, align 4
  %193 = load i32, i32* @sym_count, align 4
  %194 = sext i32 %193 to i64
  %195 = mul i64 %194, 4
  %196 = load %struct.exec*, %struct.exec** @ex, align 8
  %197 = getelementptr inbounds %struct.exec, %struct.exec* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = icmp eq i64 %195, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i32, i32* @sym_count, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %102
  %206 = load i32, i32* @sym_count, align 4
  %207 = call i64 @calloc(i32 %206, i32 1)
  %208 = inttoptr i64 %207 to i8*
  store i8* %208, i8** @sym_used, align 8
  %209 = load i8*, i8** @sym_used, align 8
  %210 = icmp ne i8* %209, null
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  br label %213

213:                                              ; preds = %205, %102
  %214 = load %struct.exec*, %struct.exec** @ex, align 8
  %215 = getelementptr inbounds %struct.exec, %struct.exec* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i64 %216)
  %218 = load %struct.exec*, %struct.exec** @ex, align 8
  %219 = call i32 @N_TXTOFF(%struct.exec* byval(%struct.exec) align 8 %218)
  %220 = load %struct.exec*, %struct.exec** @ex, align 8
  %221 = call i64 @N_TXTADDR(%struct.exec* byval(%struct.exec) align 8 %220)
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 %219, i64 %221)
  %223 = load %struct.exec*, %struct.exec** @ex, align 8
  %224 = call i32 @N_DATOFF(%struct.exec* byval(%struct.exec) align 8 %223)
  %225 = sext i32 %224 to i64
  %226 = load %struct.exec*, %struct.exec** @ex, align 8
  %227 = call i64 @N_DATADDR(%struct.exec* byval(%struct.exec) align 8 %226)
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i64 %225, i64 %227)
  %229 = load i8*, i8** @text_base, align 8
  store i8* %229, i8** @text_addr, align 8
  %230 = load i8*, i8** @data_base, align 8
  store i8* %230, i8** @data_addr, align 8
  store i64 0, i64* @origin, align 8
  %231 = load %struct.exec*, %struct.exec** @ex, align 8
  %232 = getelementptr inbounds %struct.exec, %struct.exec* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @PAGE_SIZE, align 8
  %235 = icmp sge i64 %233, %234
  br i1 %235, label %236, label %248

236:                                              ; preds = %213
  %237 = load i64, i64* @PAGE_SIZE, align 8
  %238 = load i8*, i8** @text_addr, align 8
  %239 = sub i64 0, %237
  %240 = getelementptr i8, i8* %238, i64 %239
  store i8* %240, i8** @text_addr, align 8
  %241 = load i64, i64* @PAGE_SIZE, align 8
  %242 = load i8*, i8** @data_addr, align 8
  %243 = sub i64 0, %241
  %244 = getelementptr i8, i8* %242, i64 %243
  store i8* %244, i8** @data_addr, align 8
  %245 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %245, i64* @origin, align 8
  %246 = load i64, i64* @origin, align 8
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i64 %246)
  br label %261

248:                                              ; preds = %213
  %249 = load %struct.exec*, %struct.exec** @ex, align 8
  %250 = call i32 @N_GETFLAG(%struct.exec* byval(%struct.exec) align 8 %249)
  %251 = load i32, i32* @EX_DYNAMIC, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load i64, i64* @origin, align 8
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i64 %255)
  br label %260

257:                                              ; preds = %248
  %258 = load i64, i64* @origin, align 8
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i64 %258)
  br label %260

260:                                              ; preds = %257, %254
  br label %261

261:                                              ; preds = %260, %236
  %262 = load %struct.exec*, %struct.exec** @ex, align 8
  %263 = call i32 @N_GETFLAG(%struct.exec* byval(%struct.exec) align 8 %262)
  %264 = load i32, i32* @EX_DYNAMIC, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %364

267:                                              ; preds = %261
  %268 = load i8*, i8** @data_base, align 8
  %269 = call i64 @align_struct(i8* %268)
  %270 = inttoptr i64 %269 to %struct._dynamic*
  store %struct._dynamic* %270, %struct._dynamic** @dyn, align 8
  %271 = load %struct._dynamic*, %struct._dynamic** @dyn, align 8
  %272 = getelementptr inbounds %struct._dynamic, %struct._dynamic* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i64 %273)
  %275 = load i8*, i8** @text_addr, align 8
  %276 = load %struct._dynamic*, %struct._dynamic** @dyn, align 8
  %277 = getelementptr inbounds %struct._dynamic, %struct._dynamic* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr i8, i8* %275, i64 %279
  %281 = call i64 @align_struct(i8* %280)
  %282 = inttoptr i64 %281 to %struct.section_dispatch_table*
  store %struct.section_dispatch_table* %282, %struct.section_dispatch_table** @sdt, align 8
  %283 = load i8*, i8** @text_addr, align 8
  %284 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %285 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr i8, i8* %283, i64 %287
  %289 = call i64 @align_struct(i8* %288)
  %290 = inttoptr i64 %289 to %struct.relocation_info*
  store %struct.relocation_info* %290, %struct.relocation_info** @rtrel_base, align 8
  %291 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %292 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %295 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 %293, %296
  %298 = sext i32 %297 to i64
  %299 = udiv i64 %298, 4
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* @rtrel_count, align 4
  %301 = load i32, i32* @rtrel_count, align 4
  %302 = sext i32 %301 to i64
  %303 = mul i64 %302, 4
  %304 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %305 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %308 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %306, %309
  %311 = sext i32 %310 to i64
  %312 = icmp eq i64 %303, %311
  %313 = zext i1 %312 to i32
  %314 = call i32 @assert(i32 %313)
  %315 = load i8*, i8** @text_addr, align 8
  %316 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %317 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr i8, i8* %315, i64 %319
  %321 = call i64 @align_struct(i8* %320)
  %322 = inttoptr i64 %321 to %struct.nzlist*
  store %struct.nzlist* %322, %struct.nzlist** @rtsym_base, align 8
  %323 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %324 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %327 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %325, %328
  %330 = sext i32 %329 to i64
  %331 = udiv i64 %330, 4
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* @rtsym_count, align 4
  %333 = load i32, i32* @rtsym_count, align 4
  %334 = sext i32 %333 to i64
  %335 = mul i64 %334, 4
  %336 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %337 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %340 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = sub nsw i32 %338, %341
  %343 = sext i32 %342 to i64
  %344 = icmp eq i64 %335, %343
  %345 = zext i1 %344 to i32
  %346 = call i32 @assert(i32 %345)
  %347 = load i32, i32* @rtsym_count, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %267
  %350 = load i32, i32* @rtsym_count, align 4
  %351 = call i64 @calloc(i32 %350, i32 1)
  %352 = inttoptr i64 %351 to i8*
  store i8* %352, i8** @rtsym_used, align 8
  %353 = load i8*, i8** @rtsym_used, align 8
  %354 = icmp ne i8* %353, null
  %355 = zext i1 %354 to i32
  %356 = call i32 @assert(i32 %355)
  br label %357

357:                                              ; preds = %349, %267
  %358 = load i8*, i8** @text_addr, align 8
  %359 = load %struct.section_dispatch_table*, %struct.section_dispatch_table** @sdt, align 8
  %360 = getelementptr inbounds %struct.section_dispatch_table, %struct.section_dispatch_table* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr i8, i8* %358, i64 %362
  store i8* %363, i8** @rtstr_base, align 8
  br label %364

364:                                              ; preds = %357, %261
  %365 = call i32 (...) @dump_segs()
  %366 = call i32 (...) @dump_sods()
  %367 = load %struct.relocation_info*, %struct.relocation_info** @rel_base, align 8
  %368 = load i32, i32* @rel_count, align 4
  %369 = load i32, i32* @sym_name, align 4
  %370 = load i8*, i8** @sym_used, align 8
  %371 = call i32 @dump_rels(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), %struct.relocation_info* %367, i32 %368, i32 %369, i8* %370)
  %372 = call i32 (...) @dump_syms()
  %373 = load %struct.relocation_info*, %struct.relocation_info** @rtrel_base, align 8
  %374 = load i32, i32* @rtrel_count, align 4
  %375 = load i32, i32* @rtsym_name, align 4
  %376 = load i8*, i8** @rtsym_used, align 8
  %377 = call i32 @dump_rels(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), %struct.relocation_info* %373, i32 %374, i32 %375, i8* %376)
  %378 = call i32 (...) @dump_rtsyms()
  %379 = load i8*, i8** @rtsym_used, align 8
  %380 = icmp ne i8* %379, null
  br i1 %380, label %381, label %384

381:                                              ; preds = %364
  %382 = load i8*, i8** @rtsym_used, align 8
  %383 = call i32 @free(i8* %382)
  store i8* null, i8** @rtsym_used, align 8
  br label %384

384:                                              ; preds = %381, %364
  %385 = load i8*, i8** @sym_used, align 8
  %386 = icmp ne i8* %385, null
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load i8*, i8** @sym_used, align 8
  %389 = call i32 @free(i8* %388)
  store i8* null, i8** @sym_used, align 8
  br label %390

390:                                              ; preds = %387, %384
  %391 = load i64, i64* %5, align 8
  %392 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @munmap(i64 %391, i32 %393)
  br label %395

395:                                              ; preds = %390, %93, %63, %45, %31, %21, %9
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @IS_ELF(i32) #1

declare dso_local i64 @align_struct(i8*) #1

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @N_GETMAGIC(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i64 @N_GETMAGIC_NET(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i64 @N_BADMAG(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i32 @N_TXTOFF(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i32 @N_DATOFF(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i32 @N_RELOFF(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i32 @N_SYMOFF(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i32 @N_STROFF(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @N_TXTADDR(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i64 @N_DATADDR(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i32 @N_GETFLAG(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i32 @dump_segs(...) #1

declare dso_local i32 @dump_sods(...) #1

declare dso_local i32 @dump_rels(i8*, %struct.relocation_info*, i32, i32, i8*) #1

declare dso_local i32 @dump_syms(...) #1

declare dso_local i32 @dump_rtsyms(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
