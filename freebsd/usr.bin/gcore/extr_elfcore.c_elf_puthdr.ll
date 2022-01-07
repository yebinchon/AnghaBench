; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elfcore.c_elf_puthdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elfcore.c_elf_puthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i32, i32, i8** }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.phdr_closure = type { i64, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [29 x i8] c"Failed to re-read ELF header\00", align 1
@ELFMAG0 = common dso_local global i8* null, align 8
@EI_MAG0 = common dso_local global i64 0, align 8
@ELFMAG1 = common dso_local global i8* null, align 8
@EI_MAG1 = common dso_local global i64 0, align 8
@ELFMAG2 = common dso_local global i8* null, align 8
@EI_MAG2 = common dso_local global i64 0, align 8
@ELFMAG3 = common dso_local global i8* null, align 8
@EI_MAG3 = common dso_local global i64 0, align 8
@ELF_CLASS = common dso_local global i8* null, align 8
@EI_CLASS = common dso_local global i64 0, align 8
@ELF_DATA = common dso_local global i8* null, align 8
@EI_DATA = common dso_local global i64 0, align 8
@EV_CURRENT = common dso_local global i8* null, align 8
@EI_VERSION = common dso_local global i64 0, align 8
@ELFOSABI_FREEBSD = common dso_local global i8* null, align 8
@EI_OSABI = common dso_local global i64 0, align 8
@EI_ABIVERSION = common dso_local global i64 0, align 8
@EI_PAD = common dso_local global i64 0, align 8
@ET_CORE = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i32 0, align 4
@PN_XNUM = common dso_local global i32 0, align 4
@SHT_NULL = common dso_local global i32 0, align 4
@PT_NOTE = common dso_local global i32 0, align 4
@PF_R = common dso_local global i32 0, align 4
@cb_put_phdr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*, i64, i64, i64, i32)* @elf_puthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_puthdr(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.TYPE_8__, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca %struct.phdr_closure, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @read(i32 %23, %struct.TYPE_8__* %18, i32 72)
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %22, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %36

29:                                               ; preds = %8
  %30 = load i32, i32* %22, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 72
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i8*, i8** %12, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %17, align 8
  %39 = load i8*, i8** @ELFMAG0, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 13
  %42 = load i8**, i8*** %41, align 8
  %43 = load i64, i64* @EI_MAG0, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  store i8* %39, i8** %44, align 8
  %45 = load i8*, i8** @ELFMAG1, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 13
  %48 = load i8**, i8*** %47, align 8
  %49 = load i64, i64* @EI_MAG1, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  store i8* %45, i8** %50, align 8
  %51 = load i8*, i8** @ELFMAG2, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 13
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* @EI_MAG2, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  store i8* %51, i8** %56, align 8
  %57 = load i8*, i8** @ELFMAG3, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 13
  %60 = load i8**, i8*** %59, align 8
  %61 = load i64, i64* @EI_MAG3, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  store i8* %57, i8** %62, align 8
  %63 = load i8*, i8** @ELF_CLASS, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 13
  %66 = load i8**, i8*** %65, align 8
  %67 = load i64, i64* @EI_CLASS, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8* %63, i8** %68, align 8
  %69 = load i8*, i8** @ELF_DATA, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 13
  %72 = load i8**, i8*** %71, align 8
  %73 = load i64, i64* @EI_DATA, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  store i8* %69, i8** %74, align 8
  %75 = load i8*, i8** @EV_CURRENT, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 13
  %78 = load i8**, i8*** %77, align 8
  %79 = load i64, i64* @EI_VERSION, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  store i8* %75, i8** %80, align 8
  %81 = load i8*, i8** @ELFOSABI_FREEBSD, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 13
  %84 = load i8**, i8*** %83, align 8
  %85 = load i64, i64* @EI_OSABI, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  store i8* %81, i8** %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 13
  %89 = load i8**, i8*** %88, align 8
  %90 = load i64, i64* @EI_ABIVERSION, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  store i8* null, i8** %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 13
  %94 = load i8**, i8*** %93, align 8
  %95 = load i64, i64* @EI_PAD, align 8
  %96 = getelementptr inbounds i8*, i8** %94, i64 %95
  store i8* null, i8** %96, align 8
  %97 = load i32, i32* @ET_CORE, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 12
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 11
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** @EV_CURRENT, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 10
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 9
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 72, i32* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i32 72, i32* %116, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i32 56, i32* %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  store i32 16, i32* %120, align 4
  %121 = load i32, i32* @SHN_UNDEF, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* @PN_XNUM, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %36
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 5
  store i32 0, i32* %134, align 4
  br label %179

135:                                              ; preds = %36
  %136 = load i32, i32* @PN_XNUM, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 5
  store i32 1, i32* %140, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  %150 = add nsw i32 %143, %149
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  %159 = bitcast i8* %158 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %159, %struct.TYPE_6__** %20, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %161 = call i32 @memset(%struct.TYPE_6__* %160, i32 0, i32 16)
  %162 = load i32, i32* @SHT_NULL, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %175, 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %135, %128
  %180 = load i8*, i8** %12, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %180, i64 %184
  %186 = bitcast i8* %185 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %186, %struct.TYPE_7__** %19, align 8
  %187 = load i32, i32* @PT_NOTE, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 7
  store i32 %187, i32* %189, align 8
  %190 = load i64, i64* %13, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 6
  store i64 0, i64* %194, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 5
  store i64 0, i64* %196, align 8
  %197 = load i64, i64* %14, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 4
  store i64 0, i64* %201, align 8
  %202 = load i32, i32* @PF_R, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  store i32 4, i32* %206, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 1
  store %struct.TYPE_7__* %208, %struct.TYPE_7__** %19, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %210 = getelementptr inbounds %struct.phdr_closure, %struct.phdr_closure* %21, i32 0, i32 1
  store %struct.TYPE_7__* %209, %struct.TYPE_7__** %210, align 8
  %211 = load i64, i64* %15, align 8
  %212 = getelementptr inbounds %struct.phdr_closure, %struct.phdr_closure* %21, i32 0, i32 0
  store i64 %211, i64* %212, align 8
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* @cb_put_phdr, align 4
  %215 = call i32 @each_dumpable_segment(i32 %213, i32 %214, %struct.phdr_closure* %21)
  ret void
}

declare dso_local i32 @read(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @each_dumpable_segment(i32, i32, %struct.phdr_closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
